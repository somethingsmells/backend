defmodule Backend.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :time, :datetime
      add :blob, :map
      add :report_id, references(:reports, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps
    end
    create index(:events, [:report_id])
    create index(:events, [:user_id])

  end
end

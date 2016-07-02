defmodule Backend.Repo.Migrations.CreatePhoto do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :url, :string
      add :user_id, references(:users, on_delete: :nothing)
      add :report_id, references(:reports, on_delete: :nothing)

      timestamps
    end
    create index(:photos, [:user_id])
    create index(:photos, [:report_id])

  end
end

defmodule Backend.Repo.Migrations.CreateReport do
  use Ecto.Migration

  def change do
    create table(:reports) do
      add :user_id, references(:users, on_delete: :nothing)
      add :geom, :geometry
      add :color_id, references(:colors, on_delete: :nothing)
      add :time, :datetime

      timestamps
    end
    create index(:reports, [:user_id])

  end
end

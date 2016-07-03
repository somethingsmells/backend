defmodule Backend.Repo.Migrations.CreateColor do
  use Ecto.Migration

  def change do
    create table(:colors) do
      add :name, :string
      add :image, :string

      timestamps
    end

  end
end

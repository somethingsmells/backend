defmodule Backend.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :deviceid, :string
      add :realname, :string
      add :username, :string

      timestamps
    end

  end
end

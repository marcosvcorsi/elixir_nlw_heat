defmodule ElixirNlwHeat.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :text, :string
      add :username, :string
      add :email, :string

      timestamps()
    end
  end
end

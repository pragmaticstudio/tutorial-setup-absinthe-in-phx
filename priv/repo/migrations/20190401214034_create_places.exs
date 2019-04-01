defmodule Getaways.Repo.Migrations.CreatePlaces do
  use Ecto.Migration

  def change do
    create table(:places) do
      add :name, :string
      add :location, :string
      add :max_guests, :integer

      timestamps()
    end

  end
end

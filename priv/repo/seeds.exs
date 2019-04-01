# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Getaways.Repo.insert!(%Getaways.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias Getaways.Repo
alias Getaways.Vacation.Place

%Place{
  name: "Sand Castle",
  location: "Portugal",
  max_guests: 2
} |> Repo.insert!

%Place{
  name: "Blue Igloo",
  location: "Canada",
  max_guests: 4
} |> Repo.insert!

%Place{
  name: "Ski Cabin",
  location: "Switzerland",
  max_guests: 6
} |> Repo.insert!
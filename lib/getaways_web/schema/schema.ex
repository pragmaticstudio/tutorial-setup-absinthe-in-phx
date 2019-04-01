   defmodule GetawaysWeb.Schema.Schema do
     use Absinthe.Schema

     object :place do
       field :id, non_null(:id)
       field :name, non_null(:string)
       field :location, non_null(:string)
       field :max_guests, non_null(:integer)
     end

     query do
       @desc "Get a list of places"
       field :places, list_of(:place) do
         resolve &GetawaysWeb.Resolvers.Vacation.places/3
       end

       @desc "Get a place by its id"
       field :place, :place do
         arg :id, non_null(:id)
         resolve &GetawaysWeb.Resolvers.Vacation.place/3
       end
     end
   end
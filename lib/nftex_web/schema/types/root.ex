defmodule NftexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias NftexWeb.Schema.Types
  alias NftexWeb.Resolvers.Art, as: ArtResolver
  alias NftexWeb.Middlewares.Log

  import_types Types.Art
  import_types Types.Custom.UUID4

  object :root_query do
    @desc "Retrieves an art by id"
    field :art, type: :art do
      arg :id, non_null(:uuid4)
      resolve &ArtResolver.get/2
      middleware Log
    end

    @desc "Retrieves all arts"
    field :arts, list_of(:art) do
      resolve &ArtResolver.list/2
    end
  end

  object :root_mutation do
    @desc "Create a new art"
    field :create_art, type: :art do
      arg :input, non_null(:create_art_input)
      resolve &ArtResolver.create/2
      middleware Log
    end
  end
end

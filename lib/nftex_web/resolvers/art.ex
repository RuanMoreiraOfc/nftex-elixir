defmodule NftexWeb.Resolvers.Art do
  alias Nftex.Arts

  def get(%{id: id}, _ctx) do
    Arts.get(id)
  end
end

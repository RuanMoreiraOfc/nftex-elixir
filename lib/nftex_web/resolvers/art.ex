defmodule NftexWeb.Resolvers.Art do
  alias Nftex.Arts

  def get(%{id: id}, _ctx) do
    Arts.get(id)
  end

  def list(_params, _ctx) do
    Arts.list()
  end

  def create(%{input: params}, _ctx) do
    Arts.create(params)
  end
end

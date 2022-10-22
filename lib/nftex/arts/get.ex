defmodule Nftex.Arts.Get do
  alias Nftex.{Art, Repo}

  def by_id(id) do
    case Repo.get(Art, id) do
      nil -> {:error, "Art not found"}
      art -> {:ok, art}
    end
  end
end

defmodule Nftex.Arts.List do
  alias Nftex.{Art, Repo}

  def call() do
    Repo.all(Art)
  end
end

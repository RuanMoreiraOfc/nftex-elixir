defmodule Nftex.Arts do
  alias Nftex.Arts.{Create, Get}

  defdelegate get(id), to: Get, as: :by_id
  defdelegate create(params), to: Create, as: :call
end

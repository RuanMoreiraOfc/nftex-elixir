defmodule Nftex.Arts do
  alias Nftex.Arts.{Create, Get, List}

  defdelegate list(), to: List, as: :call
  defdelegate get(id), to: Get, as: :by_id
  defdelegate create(params), to: Create, as: :call
end

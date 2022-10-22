defmodule NftexWeb.ArtsView do
  use NftexWeb, :view

  def render("arts.json", %{data: %{arts: arts}}) do
    %{arts: render_many(arts, __MODULE__, "art.json", as: :art)}
  end

  def render("art.json", %{art: art}) do
    %{
      id: art.id,
      description: art.description,
      artist_name: art.artist_name,
      hash: art.hash
    }
  end
end

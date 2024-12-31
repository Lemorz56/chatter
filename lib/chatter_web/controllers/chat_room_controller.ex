defmodule ChatterWeb.ChatRoomController do
  use ChatterWeb, :controller

  # def index(conn, _params) do
  #   render(conn, "index.html")
  # end

  def index(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    # render(conn, :home, layout: false)
    render(conn, :index)
  end
end

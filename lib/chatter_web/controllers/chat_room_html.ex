defmodule ChatterWeb.ChatRoomHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use ChatterWeb, :html

  embed_templates "chat_room_html/*"
end

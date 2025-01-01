defmodule ChatterWeb.Features.UserVisitsRoomPageTest do
  """
  As a user, I would like to see a list of all available chats.
  """

  use ChatterWeb.FeatureCase, async: true

  test "user visits room page to se a list of rooms", %{session: session} do
    room = insert(:chat_room)

    session
    |> visit("/")
    |> assert_has(Query.css(".room", text: room.name))
  end
end
    # |> visit(Routes.chat_room_path(@endpoint, :index))

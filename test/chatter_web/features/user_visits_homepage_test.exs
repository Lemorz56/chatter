#
defmodule ChatterWeb.Features.UserVisitsHomepageTest do
  use ChatterWeb.FeatureCase, async: true

  test "user can visit the homepage", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css(".title", text: "Welcome to Chatter!"))
  end
end

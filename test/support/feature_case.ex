defmodule ChatterWeb.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # this exposes the wallaby functions for the tests
      use Wallaby.DSL
      # alias to help routes
      alias ChatterWeb.Routers.Helpers, as: Routes
      # import the factory to help create data
      import Chatter.Factory

      @endpoint ChatterWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Chatter.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Chatter.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Chatter.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end

ExUnit.start()

{:ok, _} = Application.ensure_all_started(:ex_machina)
{:ok, _} = Application.ensure_all_started(:wallaby)

Application.put_env(:wallaby, :base_url, ChatterWeb.Endpoint.url())
Ecto.Adapters.SQL.Sandbox.mode(Chatter.Repo, :manual)

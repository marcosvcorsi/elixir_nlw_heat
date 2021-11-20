defmodule ElixirNlwHeat.Repo do
  use Ecto.Repo,
    otp_app: :elixir_nlw_heat,
    adapter: Ecto.Adapters.Postgres
end

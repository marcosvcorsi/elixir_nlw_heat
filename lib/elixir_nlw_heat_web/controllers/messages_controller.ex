defmodule ElixirNlwHeatWeb.MessagesController do
  use ElixirNlwHeatWeb, :controller 

  def create(conn, params) do
    IO.inspect(params)

    conn 
    |> text("RECEBI a REQUISICAO")
  end
end
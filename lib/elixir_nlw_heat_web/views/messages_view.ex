defmodule ElixirNlwHeatWeb.MessagesView do
  use ElixirNlwHeatWeb, :view

  def render("create.json", %{message: message}) do
    %{
      result: "Message created",
      message: message
    }
  end
end
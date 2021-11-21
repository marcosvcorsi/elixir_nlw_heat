defmodule ElixirNlwHeat.Tags.Count do
  alias ElixirNlwHeat.Messages.Get

  def call do
    Get.today_messages()
    |> Task.async_stream(fn message -> count_words(message.text) end)
    |> Enum.reduce(%{}, fn elem, acc -> sum_values(elem, acc) end)
  end

  defp count_words(text) do
    text
    |> String.split()
    |> Enum.frequencies()
  end

  defp sum_values({:ok, map1}, map2) do
    Map.merge(map1, map2, fn _key, value1, value2 -> value1 + value2 end)
  end
end

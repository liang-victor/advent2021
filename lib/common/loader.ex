defmodule Loader do
  def load_data(file) do
    {:ok, data} = File.read("./input/#{file}")

    data
    |> String.split("\n", trim: true)
  end
end

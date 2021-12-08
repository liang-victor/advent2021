defmodule Day01 do

  @moduledoc """
  Get the number of depth increases in successive numbers in
  the input file
  """

  def load_data() do
    {:ok, data} = File.read("./input/day_1_input.txt")

    data
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
  end

  def example_data() do
    [
      199,
      200,
      208,
      210,
      200,
      207,
      240,
      269,
      260,
      263
  ]

  end

  def count_increases(data) do
  data
    |> Enum.reduce({0, nil}, fn current_value, {count, previous_value} ->
      if current_value > previous_value do
        {count + 1, current_value}
      else
        {count, current_value}
      end
    end)
    |> then(fn {count, _} -> count end)

  end

  def count_sliding_increases(data) do
    data
    |> Enum.chunk_every(3, 1)
    |> Enum.map(&Enum.sum/1)
    |> count_increases()
  end

end


Day01.load_data() |> Day01.count_increases() |> IO.inspect(label: "part 1 answer")

Day01.load_data() |> Day01.count_sliding_increases() |> IO.inspect(label: "part 2 answer")

defmodule Day2Part2Test do
  use ExUnit.Case, async: true
  alias Day2.Position

  test "check example values" do
    sample_instructions = [
      {"forward", 5},
      {"down", 5},
      {"forward", 8},
      {"up", 3},
      {"down", 8},
      {"forward", 2}
    ]

    sample_instructions
    |> Enum.reduce(%Position{}, &Day2Part2.update_position/2)
    |> IO.inspect()
  end
end

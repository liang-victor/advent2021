defmodule Day3Part2Test do
  use ExUnit.Case, async: true

  @test_input """
  00100
  11110
  10110
  10111
  10101
  01111
  00111
  11100
  10000
  11001
  00010
  01010
  """
  test "calculate oxygen generator rating" do
    oxygen_generator_rating =
      @test_input
      |> String.split("\n", trim: true)
      |> Day3Part2.calculate_oxygen_generator_rating()

    assert oxygen_generator_rating == 23
  end

  test "calculate CO2 scrubber rating" do
    carbon_dioxide_rating =
      @test_input
      |> String.split("\n", trim: true)
      |> Day3Part2.calculate_carbon_dioxide_scrubber_rating()
      |> IO.inspect(label: "CO2 rating")

    assert carbon_dioxide_rating == 10
  end
end

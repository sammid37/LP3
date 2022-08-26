# https://exercism.org/tracks/elixir/exercises/lasagna
# Samantha D. Medeiros

defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(elapsed) do
    expected_minutes_in_oven - elapsed
  end

  def preparation_time_in_minutes(layers) do
    # a layer takes 2 minutes to be prepared
    layers * 2
  end

  def total_time_in_minutes(layers, elapsed) do
    preparation_time_in_minutes(layers) + elapsed
  end

  def alarm, do: "Ding!"
end

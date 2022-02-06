defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function

  @spec expected_minutes_in_oven() :: integer
  def expected_minutes_in_oven() do
    40
  end

  # Please define the 'remaining_minutes_in_oven/1' function

  @spec remaining_minutes_in_oven(a :: integer.t()) :: integer.t()
  def remaining_minutes_in_oven(x) do
    expected_minutes_in_oven() - x
  end

  # Please define the 'preparation_time_in_minutes/1' function

  @spec preparation_time_in_minutes(x :: integer.t()) :: integer
  def preparation_time_in_minutes(x) do
    x * 2
  end

  # Please define the 'total_time_in_minutes/2' function

  @spec total_time_in_minutes(integer.t(), integer.t()) :: integer
  def total_time_in_minutes(x, y) do
    preparation_time_in_minutes(x) + y
  end

  # Please define the 'alarm/0' function

  @spec alarm() :: string
  def alarm() do
    "Ding!"
  end
end

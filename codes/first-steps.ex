defmodule Lasagna do

  @spec expected_minutes_in_oven() :: integer
  def expected_minutes_in_oven() do
    40
  end


  @spec remaining_minutes_in_oven(a :: integer()) :: integer()
  def remaining_minutes_in_oven(x) do
    expected_minutes_in_oven() - x
  end


  @spec preparation_time_in_minutes(x :: integer()) :: integer()
  def preparation_time_in_minutes(x) do
    x * 2
  end


  @spec total_time_in_minutes(integer(), integer()) :: integer()
  def total_time_in_minutes(x, y) do
    preparation_time_in_minutes(x) + y
  end


  @spec alarm() :: String.t()
  def alarm() do
    "Ding!"
  end
end

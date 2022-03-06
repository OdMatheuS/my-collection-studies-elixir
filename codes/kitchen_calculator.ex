defmodule KitchenCalculator do
  def get_volume({_, value}) do
    value
  end

  def to_milliliter({:milliliter, num_value}) do
    {:milliliter, num_value}
  end

  def to_milliliter({:cup, num_value}) do
    {:milliliter, num_value * 240}
  end

  def from_milliliter(volume_pair, unit) do
  end

  def convert(volume_pair, unit) do
  end
end

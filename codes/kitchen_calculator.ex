defmodule KitchenCalculator do
  def get_volume({_, value}) do
    value
  end

  def to_milliliter({:milliliter, volume_value}) do
    {:milliliter, volume_value}
  end

  def to_milliliter({:cup, volume_value}) do
    {:milliliter, volume_value * 240}
  end

  def from_milliliter(volume_pair, unit) do
  end

  def convert(volume_pair, unit) do
  end
end

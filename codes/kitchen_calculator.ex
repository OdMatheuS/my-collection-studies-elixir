defmodule KitchenCalculator do
  @milliliter 1
  @cup 240
  @fluid_ounce 30
  @teaspoon 5
  
  def get_volume({_, value}) do
    value
  end

  def to_milliliter({:milliliter, volume_value}) do
    {:milliliter, volume_value}
  end

  def to_milliliter({:cup, volume_value}) do
    {:milliliter, volume_value * 240}
  end

  def to_milliliter({:fluid_ounce, volume_value}) do
    {:milliliter, volume_value * 30}
  end

  def to_milliliter({:teaspoon, volume_value}) do
    {:milliliter, volume_value * 5}
  end

  def to_milliliter({:tablespoon, volume_value}) do
    {:milliliter, volume_value * 15}
  end

  def from_milliliter({_atom, value}, :milliliter) do
    volume_converted = {value / @milliliter}
    Tuple.insert_at(volume_converted, 0, :milliliter)
  end

  def from_milliliter({_atom, value}, :cup) do
    volume_converted = {value / @cup}
    Tuple.insert_at(volume_converted, 0, :cup)
  end

  def from_milliliter({_atom, value}, :fluid_ounce) do
    volume_converted = {value / @fluid_ounce}
    Tuple.insert_at(volume_converted, 0, :fluid_ounce)
  end

  def from_milliliter({_atom, value}, :teaspoon) do
    volume_converted = {value / @teaspoon}
    Tuple.insert_at(volume_converted, 0, :teaspoon)
  end

  def convert(volume_pair, unit) do
  end
end

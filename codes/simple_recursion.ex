defmodule SimpleRecursion do
  def count_elements([]), do: 0

  def count_elements([h | t]) do
    1 + count(t)
  end
end

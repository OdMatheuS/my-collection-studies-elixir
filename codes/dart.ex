defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position :: position) :: integer
  def score({x, y}) do
    total_value_square = {x * x, y * y}
      |> IO.inspect()
      |> Tuple.sum()

    cond do
      total_value_square > 100 -> 0
      total_value_square > 25 -> 1
      total_value_square > 1 -> 5
      true -> 10
    end
  end
end

defmodule SimpleCond do
  @moduledoc """
  A simple module to see the control structures "cond"
  """
  def test_cond() do
    cond do
      2 ** 3 == 25 ->
        "This not a true"

      2 * 2 == 3 ->
        "nop! again"

      1 + 1 == 2 ->
        "This is true!!!"
    end
  end
end

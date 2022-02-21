defmodule SimpleUnless do
  @moduledoc """
  A simple module to see the "unless"
  """
  def test_unless(value) when is_integer(value) do
    unless value < 12 do
      "this value is less than 12"
    else
      "this value is greater than 12"
    end
  end
  def test_unless(_), do: "error: this value is not type integer"
end

# this module, was one of the great lessons I learned in
# the book "Learn Functional Programming with Elixir: New Foundations for a New World" by Ulisses Almeida,
# it shows in a very simple way how to implement a comparison of numbers

defmodule CompareNumbers do
  def greater_than(first_number, second_number) do
    check(first_number >= second_number, first_number, second_number)
  end

  defp check(true, number, _) do
    number
  end

  defp check(false, _, other_number) do
    other_number
  end
end

defmodule GuessingGame do
  @moduledoc """
  creating a trivial game where you have to guess a secret number.
  using functions for detailed feedback on how the guess relates to the secret number.
  """

  @type secret_number :: integer
  @type guess :: integer

  def compare(secret_number, guess \\ 0)
  def compare(_secret_number, guess) when guess === 0 or is_atom(guess), do: "Make a guess"
  def compare(secret_number, guess) when secret_number === guess, do: "Correct"
  def compare(secret_number, guess) when abs(secret_number - guess) == 1, do: "So close"
  def compare(secret_number, guess) when secret_number < guess, do: "Too high"
  def compare(secret_number, guess) when secret_number > guess, do: "Too low"
end

defmodule Secrets do
  use Bitwise

  @moduledoc """
  This is a module.
  """

  @type secret :: integer

  def secret_add(secret) do
    fn add_param -> add_param + secret end
  end

  def secret_subtract(secret) do
    fn subtract_param -> subtract_param - secret end
  end

  def secret_multiply(secret) do
    fn multiply_param -> multiply_param * secret end
  end

  def secret_divide(secret) do
    fn divide_param -> div(divide_param, secret) end
  end

  def secret_and(secret) do
    fn and_param -> and_param &&& secret end
  end

  def secret_xor(secret) do
    fn xor_param -> bxor(xor_param, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn param ->
      secret_function1.(param)
      |> secret_function2.()
    end
  end
end

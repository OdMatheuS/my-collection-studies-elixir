defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.first()
  end

  def initial(name) do
    (first_letter(name) <> ".") |> String.capitalize()
  end

  def initials(full_name) do
    full_name
    |> String.split()
    |> Enum.map(fn foo -> initial(foo) end)
    |> Enum.join(" ")
  end
end
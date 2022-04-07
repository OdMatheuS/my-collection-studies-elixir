"""
note: me from the future read this

in the third fn, could have used a shorter expression, instead of that Enum.map(),
but currently I found it clearer to use that more verbose way,
maybe in the future I'll see this and want to refactor as soon as possible LOL

    |> Enum.map(& initial/1)

    |> Enum.map(& initial(&1))
"""

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
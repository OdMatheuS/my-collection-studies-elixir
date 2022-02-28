defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove(list), do: tl(list)

  def first(list), do: hd(list)

  def count(list) do
    length(list)
  end

  def exciting_list?(list) do
    "Elixir" in list
  end
end

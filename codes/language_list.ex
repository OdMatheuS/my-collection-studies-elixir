defmodule LanguageList do
  def new(), do: []

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    tl(list)
  end

  def first(list) do
    hd(list)
  end

  def count(list) do
    length(list)
  end

  def exciting_list?(list) do
    "Elixir" in list
  end
end

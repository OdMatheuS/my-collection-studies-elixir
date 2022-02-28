defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

end

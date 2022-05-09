defmodule NameBadge do
  def print(id, name, department) do
    if id != nil do
      "[#{id}] - #{name} - #{String.upcase(department)}"
    else
      "#{name} - #{String.upcase(department)}"
    end
  end
end
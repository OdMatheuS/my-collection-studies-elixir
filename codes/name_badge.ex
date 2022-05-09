defmodule NameBadge do
  def print(id, name, department) do
    if department == nil do
      if id == nil, do: "#{name} - OWNER", else: "[#{id}] - #{name} - OWNER"
    else
      if id != nil, do: "[#{id}] - #{name} - #{String.upcase(department)}", else: "#{name} - #{String.upcase(department)}"
    end
  end
end

"""
another way... using Multiple clause functions

defmodule NameBadge do
  def print(nil, name, nil), do: "#{name} - OWNER"
  def print(nil, name, department), do: "#{name} - #{String.upcase(department)}"
  def print(id, name, nil), do: "[#{id}] - #{name} - OWNER"
  def print(id, name, department), do: "[#{id}] - #{name} - #{String.upcase(department)}"
end
"""
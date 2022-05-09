defmodule NameBadge do
  def print(id, name, department) do
    if department == nil do
      if id == nil, do: "#{name} - OWNER", else: "[#{id}] - #{name} - OWNER"
    else
      if id != nil, do: "[#{id}] - #{name} - #{String.upcase(department)}", else: "#{name} - #{String.upcase(department)}"
    end
  end
end

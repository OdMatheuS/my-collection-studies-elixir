# little example Multiple Clause Functions
defmodule MultipleClause do
  def get_info_kimetsu(:tanjiro = best_brother) do
    {best_brother, "Tanjiro Kamado"}
  end
end

MultipleClause.get_info_kimetsu(:tanjiro)
# return -> {:tanjiro, "Tanjiro Kamado"}

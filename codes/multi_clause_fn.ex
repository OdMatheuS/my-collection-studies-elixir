# little example Multiple Clause Functions
defmodule MultipleClause do
  def get_info_kimetsu(:tanjiro = best_brother) do
    {best_brother, "Tanjiro Kamado"}
  end

  def get_info_kimetsu(:pig = hunter_nickname) do
    {hunter_nickname, "Inosuke Hashibira"}
  end
end

MultipleClause.get_info_kimetsu(:tanjiro)
# return -> {:tanjiro, "Tanjiro Kamado"}

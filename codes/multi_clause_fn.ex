# little example Multiple Clause Functions
defmodule MultipleClause do
  def get_info_kimetsu(:tanjiro = best_brother) do
    {best_brother, "Tanjiro Kamado"}
  end

  def get_info_kimetsu(:pig = hunter_nickname) do
    {hunter_nickname, "Inosuke Hashibira"}
  end

  def get_info_kimetsu(:zzz = sleepy_hunter) do
    {sleepy_hunter, "Zenitsu Agatsuma"}
  end

  def get_hero("All Might"), do: "Best Hero Number 1"

  def get_info_my_hero("Endeavor"), do: "Current Hero Number 1"

  def get_info_my_hero(), do: "currently accepted only as 'All Might' and 'Endeavor' parameters"

end

MultipleClause.get_info_kimetsu(:tanjiro)
# return -> {:tanjiro, "Tanjiro Kamado"}

MultipleClause.get_info_kimetsu(:pig)
# return -> {:pig, "Inosuke Hashibira"}

MultipleClause.get_info_kimetsu(:zzz)
# return -> {:zzz, "Zenitsu Agatsuma"}

#------------------------------------#

# My Hero Examples

MultipleClause.get_info_my_hero()
# return -> "currently accepted only as 'All Might' and 'Endeavor' parameters"

MultipleClause.get_info_my_hero("Endeavor")
# return -> "Current Hero Number 1"

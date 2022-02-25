# studying a little more patter matching

# Matching parts of string
"Deku:" <> get_name_hero = "Deku: Izuku Midoriya "

"Best-Number-1:" <> best_hero_number_one = "Best-Number-1: All Might"

"Kamado" <> name_best_brother = "Kamado Tanjiro"

"Water:" <> name_hashira_of_water = "Water:Giyu Tomioka"

# using Tuples for pattern matching
my_heros = fn -> {:hero, "All Might"} end
{:hero, number_one} = my_heros.()

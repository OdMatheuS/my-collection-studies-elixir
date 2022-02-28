# using list comprehension + pattern matching to select only heros from My Hero Academia
list_of_characters_my_hero_academia = [
  hero: "Present Mic",
  villain: "Dabi",
  villain: "Stain",
  hero: "Endeavor",
  villain: "Tomura Shigaraki",
  hero: "Shoto Todoroki"
]

for {:hero, name} <- list_of_characters_my_hero_academia, do: name

# simple script to review pattern matching
heros_infos = [
  %{name: "Toshinori Yagi", gender: "Male", hero_name: "All Might"},
  %{name: "Fumikage Tokoyami", gender: "Male", hero_name: "Tsukuyomi"},
  %{name: "Toru Hagakure", gender: "Female", hero_name: "Invisible Girl"},
  %{name: "Tsuyu Asui", gender: "Female", hero_name: "Froppy"},
  %{name: "Shoto Todoroki", gender: "Male", hero_name: "Shoto"},
  %{name: "Ochaco Uraraka", gender: "Female", hero_name: "Uravity"},
]

[first_hero, second_hero, third_hero | others_heros] = heros_infos
# In this code, we select the first 3 heroes and their respective information,
# giving the possibility of being able to select only the first or any other position,
# with a much more declarative approach

# -------------------------------------------------
# Map ---------------------------------------------
izuku_midoriya = %{"age" => 16}
katsuki_bakugo = %{"age" => 17}

# String-Key Version
%{"hero_name" => "Endeavor", "age" => 46}

# Atom-Key Version
%{dabi: "Villain", age: 24}

# Other Key Types
# A map can have any data structure as a key and a value.
%{
  true => "trueval/boolean key",
  8 => "Integer",
  7.5 => "is a Float",
  [1, 2, 3] => "simple list"
  {:hero, "All Might"} => "Tuple",
  %{only_key: true} => "HI! Map",
}

# ---------------------------------------------------
# Tuple ---------------------------------------------
tuple = {:inosuke, :pig, 7, "Assault"}
elem(tuple, 1) # return :pig

# Tuple example with multiple types of data.
{"Giyu Tomioka", 0101, :abc, false}


# ---------------------------------------------------
# source: https://elixirschool.com/en/lessons/basics/collections#keyword-lists-5
# Keyword lists -------------------------------------
[tanjiro: "Kamado", zenitsu: "Agatsuma"]

# Other style
[{:tanjiro, "Kamado"}, {:zenitsu, "Agatsuma"}]

# The three characteristics of keyword lists highlight their importance:

    #Keys are atoms.
    #Keys are ordered.
    #Keys do not have to be unique.

#For these reasons, keyword lists are most commonly used to pass options to functions.

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
get_elem(tuple, 1) # return :pig

# Tuple example with multiple types of data.
{"Giyu Tomioka", 0101, :abc, false}

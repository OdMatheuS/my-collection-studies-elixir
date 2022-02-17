# A simple example of an anonymous function using pattern matching

# Use atoms as inputs
my_name_is = fn
  :fabio -> "my name is Fabio"
  :tanjiro -> "I have a sister called Nezuko"
  :midoriya -> "One for All"
  :saitama -> "just a hero for fun"
  _ -> "generated this result, because it did not do pattern matching"
end

# Interesting to use iex or livebook to see the result

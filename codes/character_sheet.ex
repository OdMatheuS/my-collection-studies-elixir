defmodule RPG.CharacterSheet do
  def welcome(), do: IO.puts "Welcome! Let's fill out your character sheet together."
    
  def ask_name() do
    IO.gets("What is your character's name?\n")
    |> String.trim()
  end
  
end
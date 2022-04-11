defmodule HighScore do

  def new() do
    Map.new()
  end

  def add_player(scores, name, score \\ 0) do
    Map.put(scores, name, score)
  end

end
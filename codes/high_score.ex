defmodule HighScore do
  
  @default_score 0

  def new() do
    Map.new()
  end

  def add_player(scores, name, score \\ @default_score) do
    Map.put(scores, name, score)
  end

end
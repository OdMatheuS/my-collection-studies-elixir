defmodule HighScore do
  
  @default_score 0

  def new() do
    Map.new()
  end

  def add_player(scores, name, score \\ @default_score) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.put(scores, name, @default_score)
  end

end
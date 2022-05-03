defmodule ResistorColor do
  @colors [
    :black,
    :brown,
    :red,
    :orange,
    :yellow,
    :green,
    :blue,
    :violet,
    :grey,
    :white
  ]
  @doc """
  Return the value of a color band
  """
  @spec code(atom) :: integer()
  def code(color) do
    @colors
    |> Enum.find_index(fn color_atom -> color_atom == color end)
  end
end
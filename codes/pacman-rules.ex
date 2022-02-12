defmodule Rules do
  @type power_pellet_active :: boolean
  @type touching_ghost :: boolean
  @type touching_power_pellet :: boolean
  @type touching_dot :: boolean
  @type has_eaten_all_dots :: boolean

  @spec eat_ghost?() :: boolean
  def eat_ghost?(power_pellet_active, touching_ghost) do
    power_pellet_active and touching_ghost
  end

  @spec score?() :: boolean
  def score?(touching_power_pellet, touching_dot) do
    touching_power_pellet or touching_dot
  end

  @spec lose?() :: boolean
  def lose?(power_pellet_active, touching_ghost) do
    not power_pellet_active and touching_ghost
  end

  @spec win?() :: boolean
  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    has_eaten_all_dots and not Rules.lose?(power_pellet_active, touching_ghost)
  end
end

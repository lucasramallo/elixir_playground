defmodule ExMon.Player do
  @required_keys [:life, :name, :moves]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, move_rnd, move_avg, movie_heal) do
    %ExMon.Player{
      life: @max_life,
      name: name,
      moves: %{
        move_rnd: move_rnd,
        move_avg: move_avg,
        movie_heal: movie_heal
      }
    }
  end
end

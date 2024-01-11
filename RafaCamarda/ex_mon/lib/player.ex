defmodule ExMon.Player do
<<<<<<< HEAD
  @required_keys [:life, :name, :move_rnd, :move_avg, :movie_heal]
=======
  @required_keys [:life, :name, :move_rnd, :move_avg, :move_heal]
>>>>>>> 29eb2eb6626788e046f5b12ea0b22ef375898c7c
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

<<<<<<< HEAD
  def build(name, move_rnd, move_avg, movie_heal) do
=======
  def build(name, move_rnd, move_avg, move_heal) do
>>>>>>> 29eb2eb6626788e046f5b12ea0b22ef375898c7c
    %ExMon.Player{
      life: @max_life,
      name: name,
      move_rnd: move_rnd,
      move_avg: move_avg,
<<<<<<< HEAD
      movie_heal: movie_heal
=======
      move_heal: move_heal
>>>>>>> 29eb2eb6626788e046f5b12ea0b22ef375898c7c
    }
  end
end

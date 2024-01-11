alias ExMon.{Player, Game}

defmodule ExMon do
  def create_player(name, move_rnd, move_avg, movie_heal) do
    Player.build(name, move_rnd, move_avg, movie_heal)
  end

  def start_game(player) do
    create_player("Compuiuter", :punch, :kick, :heal)
    |> Game.start(player)
  end

  def run do
    create_player("Lucas", :soco, :chute, :cura)
    |> start_game()
  end
end

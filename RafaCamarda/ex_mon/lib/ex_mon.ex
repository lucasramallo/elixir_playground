alias ExMon.{Player, Game}
alias ExMon.Game.{Status, Actions}

defmodule ExMon do
  def create_player(name, move_rnd, move_avg, movie_heal) do
    Player.build(name, move_rnd, move_avg, movie_heal)
  end

  def start_game(player) do
    create_player("Compuiuter", :punch, :kick, :heal)
    |> Game.start(player)

    Status.print_status()
  end

  def run do
    create_player("Lucas", :soco, :chute, :cura)
    |> start_game()
  end

  def make_move(move) do
    move
    |> Actions.fetch_movie()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_menssage(move)

  defp do_move({:ok, move}) do
    case move do
      :move_heal -> "curar"
      _ -> Actions.attack(move)
    end
  end
end

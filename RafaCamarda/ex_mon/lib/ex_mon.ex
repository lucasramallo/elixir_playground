alias ExMon.{Player, Game}
alias ExMon.Game.{Status, Actions}

defmodule ExMon do

  @bot_moves [:move_rnd, :move_avg, :movie_heal]

  def create_player(name, move_rnd, move_avg, movie_heal) do
    Player.build(name, move_rnd, move_avg, movie_heal)
  end

  def start_game(player) do
    create_player("Compuiuter", :punch, :kick, :heal)
    |> Game.start(player)

    Status.print_status(Game.info())
  end

  def run do
    create_player("Lucas", :soco, :chute, :cura)
    |> start_game()
  end

  def make_move(move) do
    Game.info()
    |> Map.get(:status)
    |> handle_status(move)
  end

  defp handle_status(:game_over, _move), do: Status.print_status(Game.info)

  defp handle_status(_other, move) do
    move
    |> Actions.fetch_movie()
    |> do_move()

    computer_move(Game.info)
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_menssage(move)

  defp do_move({:ok, move}) do
    case move do
      :move_heal -> Actions.heal()
      _ -> Actions.attack(move)
    end

    Status.print_status(Game.info())
  end

  defp computer_move(%{turn: :bot, status: :continue}) do
    move = {:ok, Enum.random(@bot_moves)}
    do_move(move)
  end

  defp computer_move(_), do: :ok
end

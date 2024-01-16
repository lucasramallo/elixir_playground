defmodule ExMon.Game.Actions do
  alias ExMon.Game
  alias ExMon.Game.Actions.{Attack, Heal}

  def fetch_movie(movie) do
    Game.get_player()
    |> Map.get(:moves)
    |> find_move(movie)
  end

  defp find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {key, value} ->
      if value == move, do: {:ok, key}
    end)
  end

  def attack(move) do
    case Game.get_turn() do
      :player -> Attack.attack_opponent(:bot, move)
      :bot -> Attack.attack_opponent(:player, move)
    end
  end

  def heal() do
    case Game.get_turn() do
      :player -> Heal.heal(:player)
      :bot -> Heal.heal(:bot)
    end
  end
end

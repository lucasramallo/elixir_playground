defmodule ExMon.Game.Actions.Attack do

  alias ExMon.Game.Status
  alias ExMon.Game

  @move_avg 18..25
  @move_rnd 10..35

  def attack_opponent(opponent, move) do
    damage = calculate_power(move)

    opponent
    |> Game.fetch_player()
    |> Map.get(:life)
    |> calculate_total_life(damage)
    |> update_opponente_life(opponent, damage)
  end

  defp calculate_power(:move_avg), do: Enum.random(@move_avg)
  defp calculate_power(:move_rnd), do: Enum.random(@move_rnd)


  defp calculate_total_life(life, damage) when life - damage < 0, do: life = 0
  defp calculate_total_life(life, damage), do: life - damage

  defp update_opponente_life(new_life, opponent, damage) do
    opponent
    |> Game.fetch_player()
    |> Map.put(:life, new_life)
    |> update_game(opponent, damage)
  end

  defp update_game(new_state_player, opponent, damage) do
    Game.info()
    |> Map.put(opponent, new_state_player)
    |> Game.update()

    Status.print_move_menssage(opponent, :attack, damage)
  end
end

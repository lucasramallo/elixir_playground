defmodule ExMon.Game do
  use Agent
  alias ExMon.Player

  def start(bot, player) do
    initial_state = %{
      bot: bot,
      player: player,
      turn: :player,
      status: :started
    }

    Agent.start_link(fn -> initial_state end, name: __MODULE__)
  end

  def info do
    Agent.get(__MODULE__, & &1)
  end

  def update(state) do
    Agent.update(__MODULE__, fn _ -> update_game_status(state) end)
  end

  def get_player, do: Map.get(info(), :player)
  def get_turn, do: Map.get(info(), :turn)
  def fetch_player(player), do: Map.get(info(), player)

  def update_game_status(%{player: %Player{life: player_life}, bot: %Player{life: bot_life} = state })
    when player_life == 0 or bot_life == 0,
    do: Map.put(state, :status, :game_over)

  def update_game_status(state) do
    state
    |> Map.put(:status, :continue)
    |> update_turn()
  end

  def update_turn(%{turn: :player} = state), do: Map.put(state, :turn, :bot)
  def update_turn(%{turn: :bot} = state), do: Map.put(state, :turn, :player)
end

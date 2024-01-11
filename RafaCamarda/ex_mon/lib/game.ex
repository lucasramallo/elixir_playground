defmodule ExMon.Game do
  use Agent

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
end

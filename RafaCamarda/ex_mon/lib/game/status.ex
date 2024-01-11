defmodule ExMon.Game.Status do
  alias ExMon.Game

  def print_status do
    IO.puts("\n==== The game is started ====\n")
    IO.inspect Game.info()

    IO.puts("---------------------------------------------------")
  end

  def print_wrong_move_menssage(move) do
    IO.puts("Invalid move: #{move}")
  end

  def print_move_menssage(:bot, :attack, damage) do
    IO.puts("\n==== The player attacked the bot dealing #{damage} damage ====\n")
  end

  def print_move_menssage(:player, :attack, damage) do
    IO.puts("\n==== The player bot the player dealing #{damage} damage ====\n")
  end
end

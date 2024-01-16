defmodule ExMon.Game.Status do

  def print_status(%{status: :started} = info) do
    IO.puts("\n==== The game is started ====\n")
    IO.inspect(info)

    IO.puts("---------------------------------------------------")
  end

  def print_status(%{status: :continue, turn: player} = info) do
    IO.puts("\n==== It's #{player} turn ====\n")
    IO.inspect(info)

    IO.puts("---------------------------------------------------")
  end

  def print_status(%{status: :game_over, turn: player} = info) do
    IO.puts("\n==== Game Over ====\n")
    IO.inspect(info)

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

  def print_move_menssage(player, :heal, life) do
    IO.puts("\n==== The player #{player} healled itself to #{life} life points ====\n")
  end
end

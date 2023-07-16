defmodule Main do
  def run do
    IO.gets("Digite o número > ") # "2\n"
    |> String.trim() # "2"
    |> Integer.parse() # {2, ""} Integer.parse() sempre retorna uma tupla, mesmo que o segundo elemento seja vazio
    |> getNumber() # 2
    |> evenOrOdd()
  end

  def getNumber({num, _rest}) do
    num
  end

  def evenOrOdd(number) when rem(number, 2) == 0 do
    IO.puts("Is Even")
    run()
  end

  def evenOrOdd(number) when rem(number, 2) != 0 do
    IO.puts("Is Odd")
    run()
  end
end

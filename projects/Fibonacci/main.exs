# defmodule Main do
#   def run() do
#     index_str = IO.gets("Digite o Index > ")
#     index = String.trim(index_str) |> String.to_integer()
#     result = fib(index - 1)
#     IO.puts(result)
#   end

#   def fib(0), do: 0
#   def fib(1), do: 1

#   def fib(index) when index > 1 do
#     fib(index - 1) + fib(index - 2)
#   end
# end

# Main.run()


defmodule Main do
  def run() do
    index_str = IO.gets("Digite o Index > ")
    index = String.trim(index_str) |> String.to_integer()

    {time, result} = :timer.tc(fn -> fib(index - 1) end)

    time_in_seconds = time / 1_000_000.0

    IO.puts("Resultado: #{result}")
    IO.puts("Tempo de execucao: #{time_in_seconds} segundos")
  end

  def fib(0), do: 0
  def fib(1), do: 1

  def fib(index) when index > 1 do
    fib(index - 1) + fib(index - 2)
  end
end

Main.run()

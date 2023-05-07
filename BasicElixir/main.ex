defmodule Main do
  def run do
    IO.puts("Digite o primeiro valor:")
    valor1 = IO.gets("") |> String.trim() |> String.to_integer()

    IO.puts("Digite o segundo valor:")
    valor2 = IO.gets("") |> String.trim() |> String.to_integer()

    resultado = valor1 + valor2

    IO.puts("O resultado da soma é #{resultado}")
  end
end

Soma.main()

defmodule Soma do
  def main do
    path = "caminho/do/arquivo.txt"
    valores = File.stream!(path)
      |> Stream.map(&String.trim)
      |> Stream.map(&String.to_integer)
      |> Enum.into([])
    [valor1, valor2] = valores


    resultado = valor1 + valor2

    IO.puts("O resultado da soma é #{resultado}")
  end
end

Soma.main()

path = "entrada.txt"

valores = path
  |> File.read!()
  |> String.split(" ")
  |> Enum.map(&String.to_integer/1)

{valor1, valor2} = valores


# defmodule Main do
#   def sayMyName(name) do
#     IO.puts ("My name is #{name}")
#   end
# end

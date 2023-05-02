defmodule Main do
  def run(path) do
    valores = path
      |> File.read!()
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)

    [valor1, valor2] = valores
    resultado = valor1 + valor2
    IO.puts("O resultado da soma é #{resultado}")
  end
end

# Main.run("./input.txt")

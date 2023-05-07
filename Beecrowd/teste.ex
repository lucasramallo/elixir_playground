defmodule Main do
  def run(path) do
    values = path
      |> File.read!()
      |> String.trim()
      |> String.split()
      |> Enum.map(&String.to_integer/1)

    [value1, value2] = values
    resultado = value1 + value2
    IO.puts("O resultado da soma é #{resultado}")
  end
end

# Main.run("./input.txt")

defmodule Main do
  def main() do
    data = [%{name: "Lucas", idade: 18, cpf: 13214432242}, %{name: "Pedro"}, %{name: "Julia"}]
    list = ["João", "Marcos", "Camila", "Matheus"]

    for_each(data, :name)
    for_each(list)

    first_user_data = Enum.reduce(
      hd(data), %{},
      fn {key, value}, newMap -> Map.put(newMap, key, value) end
    )

    IO.inspect(first_user_data)
  end

  defp for_each([], _key), do: :ok

  defp for_each([head | tail], key) do
    IO.puts(head[key])
    for_each(tail, key)
  end

  defp for_each([]), do: :ok

  defp for_each([head | tail]) do
    IO.puts(head)
    for_each(tail)
  end
end

Main.main()

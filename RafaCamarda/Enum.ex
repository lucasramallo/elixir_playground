defmodule Main do
  def main() do
    data = [%{name: "Lucas", idade: 18, cpf: 13214432242}, %{name: "Pedro"}, %{name: "Julia"}]

    first_user_data = Enum.reduce(
      hd(data), %{},
      fn {key, value}, newMap -> Map.put(newMap, key, spend_a_year(value)) end
    )

    IO.inspect(first_user_data)
  end

  def spend_a_year(value) when is_bitstring(value) do
    value
  end
  String.
  def spend_a_year(value) when is_integer(value) do
    value + 1
  end
end
Main.main()

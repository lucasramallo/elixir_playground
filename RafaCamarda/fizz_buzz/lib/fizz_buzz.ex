defmodule FizzBuzz do
  def read(file) do
    file
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    res =
      result
      |> String.split(",")
      |> Enum.map(&String.trim/1)
      |> Enum.map(&convert/1)

    {:ok, res}

  end

  defp handle_file_read({:error, reason}), do: {:error, reason}

  defp convert(el) do
    el
    |> String.to_integer()
    |> evaluate()
  end

  defp evaluate(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate(number), do: number
end

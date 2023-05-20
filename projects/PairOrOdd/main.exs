defmodule App do
  def run() do
    IO.gets("Type a number |> ")
    |> Integer.parse()
    |> number_validation()
    |> is_pair()
    |> IO.puts()
  end

  def is_pair(number) do
    if rem(number, 2) == 0 do
      "PAIR"
    else
      "ODD"
    end
  end

  def number_validation(data) do
    if data == :error do
      IO.puts("Invalid Number")
      run()
    else
      {num, _} = data
      num
    end
  end
end

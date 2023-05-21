defmodule App do
  def run() do
    IO.gets("Type a number |> ")
    |> Integer.parse()
    |> number_validation()
    |> is_even()
    |> IO.puts()
  end


  # Checks whether the number is even or odd
  def is_even(number) do
    if rem(number, 2) == 0 do
      "EVEN"
    else
      "ODD"
    end
  end

  # Validates if input is a number
  def number_validation(data) do
    if data == :error do
      IO.puts ("Invalid Number!")
      run()
    else
      {num, _} = data
      num
    end
  end
end

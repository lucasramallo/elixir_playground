defmodule Sum do
  def main do
    input = IO.read(:stdio, :all)
    [number1, number2] = String.split(input, " ", trim: True)

    number1 = String.to_integer(number1)
    number2 = String.to_integer(number2)

    soma = number1 + number2

    IO.puts(soma)
  end
end

Sum.main()

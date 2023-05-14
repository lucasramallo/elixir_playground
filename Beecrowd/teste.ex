# defmodule Main do
#   def run do
#     input = """
#     1
#     3
#     """

#     [a_str, b_str] = input |> String.trim() |> String.split("\n")

#     a = String.to_integer(a_str)
#     b = String.to_integer(b_str)

#     x = a + b

#     IO.puts "X = #{x}"
#   end
# end

# Main.run()


defmodule Main do
  def run do
    a = IO.gets("Digite um número |> ") |> String.trim |> String.to_integer
    b = IO.gets("Digite outro número |>") |> String.trim |> String.to_integer
    x = a + b
    IO.puts "X = #{x}"
  end
end

Main.run()


defmodule Soma do
  def main do
    input = IO.read(:stdio, :all)
    [n1, n2] = String.split(input, " ", trim: True)
    soma = String.to_integer(n1) + String.to_integer(n2)
    IO.puts(soma)
  end
end

Soma.main()

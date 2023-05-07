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




# defmodule Main do
#   def run do
#     a = IO.gets("") |> String.trim |> String.to_integer
#     b = IO.gets("") |> String.trim |> String.to_integer
#     x = a + b
#     IO.puts "X = #{x}"
#   end
# end

# Main.run()

defmodule Main do
  def run do
    {:ok, file} = File.open("input.txt")
    stream = File.stream!(file)

    numbers = stream
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_integer/1)

    x = Enum.sum(numbers)
    IO.puts "X = #{x}"

    File.close(file)
  end
end

Main.run()

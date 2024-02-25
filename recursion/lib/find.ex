defmodule Find do

  def run() do
    list = [1, 2, 3, 4]
    IO.inspect find_element_in_a_list(list, 1)
  end

  def find_element_in_a_list([head | tail], el) do
    find_element_in_a_list(tail, el)
  end

  def find_element_in_a_list([], el) do
    :ok
  end

  def find_element_in_a_list([head | tail ], el) when head == el  do
    :true
  end
end

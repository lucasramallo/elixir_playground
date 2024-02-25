defmodule Test do

  def run(response, searched_string) do

    map = %{};

    String.codepoints(response)
    |> Enum.map(fn letter ->
        check_if_the_letter_belongs_to_the_searched_word(letter, searched_string, map)
      end)

    IO.inspect map
  end


  def check_if_the_letter_belongs_to_the_searched_word(letter, searched_string, map) do
    if String.contains?(searched_string, letter) do
      Map.put(map, :true, letter)
    end
  end
end

defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "read/1" do
    test "when file is valid, returns the coverted list" do
      expected = {:ok, [1, 2, :fizz, :buzz, :fizzbuzz, :buzz, :buzz, :fizz, :buzz]}
      assert FizzBuzz.read("numbers_tests.txt") == expected
    end

    test "when file is invalid, returns a error" do
      expected = {:error, :enoent}
      assert FizzBuzz.read("insistent.txt") == expected
    end
  end
end

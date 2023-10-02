defmodule BankTest do
  use ExUnit.Case
  doctest User

  test "greets the world" do
    assert User.create("John", "12345678901", 0) == %User{name: "John", cpf: "12345678901", balance: 0}
  end
end

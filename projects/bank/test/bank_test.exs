defmodule BankTest do
  use ExUnit.Case
  doctest User

  test "User Creation" do
    assert User.create("John", "12345678901", 0) == %User{name: "John", cpf: "12345678901", balance: 0, history: []}
  end
end

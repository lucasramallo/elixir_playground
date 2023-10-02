defmodule User do

  @enforce_keys [:name, :cpf]
  defstruct name: nil, cpf: nil, balance: 0

  @spec create(name :: String.t(), cpf :: String.t(), balance: Integer.t()) :: %User{}
  def create(name, cpf, balance) do
    %User{name: name, cpf: cpf, balance: balance}
  end

  @spec deposit(user :: %User{}, amount :: Integer.t()) :: %User{}
  def deposit(user, amount) when amount > 0 do
    %User{user | balance: user.balance + amount}
  end

  def deposit(user, amount) when amount <= 0 do
    IO.puts("O valor não pode ser negativo!")
    user
  end

  @spec withdraw(user :: %User{}, amount :: Integer.t()) :: %User{}
  def withdraw(user, amount) when amount > 0 do
    %User{user | balance: user.balance - amount}
  end

  def withdraw(user, amount) when amount <= 0 do
    IO.puts("O valor não pode ser negativo!")
    user
  end
end

defmodule Main do
  def main do
    cliente1 = User.create("João", "13215593450", 1000) |> IO.inspect()

    cliente1 = User.deposit(cliente1, -12)
    IO.puts("Saldo do cliente: #{cliente1.balance}")

    cliente1 = User.withdraw(cliente1, 1000)
    IO.puts("Saldo do cliente: #{cliente1.balance}")
  end
end

Main.main()

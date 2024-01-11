defmodule User do
  @enforce_keys [:name, :cpf]
  defstruct name: nil, cpf: nil, balance: 0, history: []

  @spec create(name :: String.t(), cpf :: String.t(), balance: Integer.t()) :: %User{}
  def create(name, cpf, balance) do
    %User{name: name, cpf: cpf, balance: balance, history: []}
  end

  @spec deposit(user :: %User{}, amount :: Integer.t()) :: %User{}
  def deposit(user, amount) when amount > 0 do
    %User{
      user | balance: user.balance + amount,
      history: user.history ++ ["Deposito: R$#{amount}.00"]
    }
  end

  def deposit(user, amount) when amount <= 0 do
    IO.puts("O valor não pode ser negativo!")
    user
  end

  @spec withdraw(user :: %User{}, amount :: Integer.t()) :: %User{}
  def withdraw(user, amount) when amount > 0 do
    %User{
      user | balance: user.balance - amount,
      history: user.history ++ ["Saque: R$#{amount}.00"]
    }
  end

  def withdraw(user, amount) when amount <= 0 do
    IO.puts("O valor não pode ser negativo!")
    user
  end

  def statement(user) do
    Enum.each(user.history, fn el -> IO.puts(el) end)
  end
end

defmodule Main do
  def main do
    users = %{name: ["Lucas", "Pedro", "João"], age: [18, 18, 20]}

    usersList = Enum.zip(users[:name], users[:age])

    Enum.map(usersList,
      fn {name, age} -> view(name, age) end
    )
    usersList |> IO.inspect()
  end

  def view(name, age) do
    IO.puts("Nome: #{name}")
    IO.puts("Idade: #{age}\n")
  end
end

Main.main()

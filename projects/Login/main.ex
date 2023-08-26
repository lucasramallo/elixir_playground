defmodule Main do
  def run() do
    while(:true)
  end

  defp while(conditionLoop) when conditionLoop == :true do
    option = IO.gets("Login or Register > ")
    |> String.trim()
    |> String.upcase()

    case option do
      "LOGIN" ->
        username = getUser()
        password = getPassword()
        {username, password} |> auth()

        while(:true)
      "REGISTER" ->
        register()

        while(:true)
    end
  end

  defp register do
    IO.puts("Register")
  end

  defp auth(credentials) do
    case credentials do
      {"lucas", "1234"} ->
        IO.puts("Authenticated!")
      {"lucas", pass} when pass != "1234" and pass != "" ->
        IO.puts("Invalid Password!")
      {user, _rest} when user != "lucas" and user != "" ->
        IO.puts("User Not Found!")
      {user, pass} when user == "" or pass == "" ->
        IO.puts("Enter the values!")
    end
  end

  defp getUser() do
    IO.gets("User > ")
    |> String.trim()
  end

  defp getPassword() do
    IO.gets("Password > ")
    |> String.trim()
  end
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = fn x -> x * 2 end
Enum.map(list, sum)

# saida: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

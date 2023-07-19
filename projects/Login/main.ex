defmodule Main do
  def login() do
    while(:true)
  end

  defp while(conditionLoop \\ :true) when conditionLoop == :true do
    username = getUser()
    password = getPassword()

    {username, password} |> auth()
    while(:true)
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











# defmodule Main do
#   def login() do
#     username = getUser()
#     password = getPassword()

#     {username, password} |> auth()
#   end

#   def auth(credentials) do
#     case credentials do
#       {"lucas", "1234"} ->
#         IO.puts("Authenticated!")
#       {"lucas", pass} when pass != "1234" and pass != "" ->
#         IO.puts("Invalid Password!")
#         login()
#       {user, _rest} when user != "lucas" and user != "" ->
#         IO.puts("User Not Found!")
#         login()
#       {user, pass} when user == "" or pass == "" ->
#         IO.puts("Enter the values!")
#         login()
#     end
#   end

#   def getUser() do
#     IO.gets("User > ")
#     |> String.trim()
#   end

#   def getPassword() do
#     IO.gets("Password > ")
#     |> String.trim();
#   end
# end


# #   def auth(user, pass) when user == "lucas" and pass == "123" do
# #     IO.puts("Authenticated!");
# #   end

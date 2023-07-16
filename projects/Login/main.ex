defmodule Main do
  def run do
    username = getUser()
    password = getPassword()

    auth(username, password)
  end

  def getUser do
    IO.gets("User > ")
    |> String.trim()
  end

  def getPassword do
    IO.gets("Password > ")
    |> String.trim()
  end

  def auth(user, pass) when user == "lucas" and pass == "123" do
    IO.puts("Authenticated!")
  end

  def auth(user, pass) when user == "lucas" and pass != "123" do
    IO.puts("Invalid Password!")
    run()
  end

  def auth(user, pass) when user != "lucas" and pass == "123" do
    IO.puts("Invalid Username!")
    run()
  end

  def auth(user, pass) when user != "lucas" and pass != "123" do
    IO.puts("Invalid Username and Password!")
    run()
  end

  def auth(:error) do
    IO.puts("Error!")
    run()
  end

end

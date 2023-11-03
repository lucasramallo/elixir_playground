defmodule Input do
  def fetch_name() do
    IO.gets("Name > ")
    |> String.trim()
    |> String.downcase()
  end

  def fetch_password() do
    IO.gets("Password > ")
    |> String.trim()
  end
end

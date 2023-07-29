defmodule Login do

  @doc """
    Login Module
  """

  def getCredentials do
    IO.gets("Name > ")
    |> String.trim()
  end

  def auth do
    credentials = {"lucas", "1234"}
    case credentials do
      {"lucas", "123"} -> "Authenticated!"
      _ -> credentials |> invalid_credentials()
    end
  end

  def invalid_credentials(credentials) do
    IO.inspect(credentials)
  end
end

defmodule GetCredentials do
  def get_name() do
    IO.gets("Name > ")
    |> String.trim();
  end

  def get_password() do
    IO.gets("Password > ")
    |> String.trim();
  end
end

defmodule Auth do
  alias InvalidCredentials;
  alias GetCredentials;
  alias Database.Data;

  def call() do

    IO.puts("Login")

    name = GetCredentials.get_name();
    password = GetCredentials.get_password();

    db_credentials = Database.Data.user()

    cond do
      {name, password} == db_credentials -> IO.puts("\nAuthenticated!\n");
      true -> {name, password} |> InvalidCredentials.invalid_credential_type(); # true for any other case.
    end
  end
end

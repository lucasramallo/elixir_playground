defmodule Auth do
  alias InvalidCredentials;
  alias GetCredentials;
  alias Database.Data;

  def call do
    name = GetCredentials.get_name();
    password = GetCredentials.get_password();

    db_credentials = Database.Data.user()

    case {name, password} do
      ^db_credentials -> "Authenticated!";
      _ -> {name, password} |> InvalidCredentials.invalid_credential_type();
    end
  end
end

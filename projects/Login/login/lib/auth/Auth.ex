defmodule Auth do
  alias InvalidCredentials
  alias GetCredentials
  alias UserCredentialsSchema
  alias App

  def call() do
    IO.puts("Login")

    name = GetCredentials.fetch_name()
    password = GetCredentials.fetch_password()

    db_credentials = UserCredentialsSchema.credentials()
    db_username = db_credentials.username
    db_password = db_credentials.password

    IO.inspect(db_credentials)

    case {name, password} do
      {^db_username, ^db_password} ->
        App.app()
      _ ->
        InvalidCredentials.handle_error({name, password})
    end
  end
end

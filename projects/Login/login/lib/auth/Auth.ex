defmodule Auth do
  alias InvalidCredentials
  alias Input
  alias UserController
  alias App

  def call() do
    IO.puts("Login")

    name = Input.fetch_name()
    password = Input.fetch_password()

    credentials = UserController.get_credentials()
    db_username = credentials.username
    db_password = credentials.password

    IO.inspect(credentials)

    case {name, password} do
      {^db_username, ^db_password} ->
        App.app()
      _ ->
        InvalidCredentials.handle_error({name, password})
    end
  end
end

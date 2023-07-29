defmodule InvalidCredentials do
  alias Database.Data;
  alias Auth;

   @doc """
      This module identifies the type of invalid credential if authentication is not successful.
    """

  def invalid_credential_type({name, pass}) do

    {name_in_db, password_in_db} = Database.Data.user()

    IO.puts("Invalid Credentials!")

    cond do
      name != name_in_db ->
        IO.puts("User not found!")
        Auth.call();
      pass != password_in_db ->
        IO.puts("Invalid password!")
        Auth.call();
    end
  end
end

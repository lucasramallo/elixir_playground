defmodule InvalidCredentials do
  alias Database.Data;
  alias Auth;

   @doc """
      This module identifies the type of invalid credential if authentication is not successful.
    """

  def invalid_credential_type({name, pass}) do

    {name_in_db, password_in_db} = Database.Data.user()

    IO.puts("\nInvalid Credentials!")

    cond do
      name != name_in_db ->
        IO.puts("User not found!\n")
        Auth.call();
      pass != password_in_db ->
        IO.puts("Invalid password!\n")
        Auth.call();
    end
  end
end

defmodule InvalidCredentials do
  alias Database.Data;
  alias Auth;

   @doc """
      This module identifies the type of invalid credential if authentication is not successful.
    """

  def invalid_credential_type({name, pass}) do

    {data_credential_name, data_credential_password} = Database.Data.user()

    IO.puts("\nInvalid Credentials!")

    cond do
      name != data_credential_name ->
        IO.puts("User not found!\n")
        Auth.call();
      pass != data_credential_password ->
        IO.puts("Invalid password!\n")
        Auth.call();
    end
  end
end

defmodule UserCredentialsSchema do

  alias Database

  defstruct [:username, :password]

  def credentials() do
    {username, password} = Database.Data.user()
    %UserCredentialsSchema{username: username, password: password}
  end
end

defmodule UserController do

  alias Database

  defstruct [:username, :password]

  #getCredentials
  def get_credentials() do
    {username, password} = Database.Data.user()
    %UserController{username: username, password: password}
  end
end

defmodule Main do
  alias Auth

  def login do
    Auth.call()
  end
end

# cmd /c iex -S mix

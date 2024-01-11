defmodule App do
  def listener do
    receive do
      {:ok, value} -> handler_mensage({value, "Ola"});
    end

    listener()
  end

  def handler_mensage(msg) do
    {sender_msg, reciever_msg} = msg

    IO.puts("Sender: #{sender_msg}" )
    IO.puts("Me: #{reciever_msg}")
  end
end

receiver = spawn(App, :listener, [])

send receiver, {:ok, "hello"}

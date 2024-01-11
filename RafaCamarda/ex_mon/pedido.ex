defmodule RecebimentoPedido do
  def start_link do
    spawn_link(&loop/0)
  end

  defp loop do
    receive do
      {:novo_pedido, pedido} ->
        ProcessamentoPedido.processar(pedido)
        loop()
    end
  end
end

defmodule ProcessamentoPedido do
  def processar(pedido) do
    Pagamento.processar_pagamento(pedido)
  end
end

defmodule Pagamento do
  def processar_pagamento(pedido) do
    enviar_confirmacao(pedido)
  end

  defp enviar_confirmacao(pedido) do
    IO.puts("Pagamento processado com sucesso para o pedido #{pedido[:numero]}!")
  end
end

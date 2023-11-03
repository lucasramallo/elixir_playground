defmodule AlgebraLinear do
  def soma_matrizes(matriz_a, matriz_b) do
    IO.inspect(separar_colunas(matriz_a, matriz_b))
  end

  defp separar_colunas([linha_a | rest_a], [linha_b | rest_b]) do
    [somar_linhas(linha_a, linha_b) | separar_colunas(rest_a, rest_b)]
  end

  defp separar_colunas([], []), do: []

  defp somar_linhas([a1 | tail_a], [b1 | tail_b]) do
    [a1 + b1 | somar_linhas(tail_a, tail_b)]
  end

  defp somar_linhas([], []), do: []
end

matriz_a = [[2, 3, 4], [5, 6, 7], [8, 9, 10]]
matriz_b = [[11, 12, 13], [14, 15, 16], [17, 18, 19]]

AlgebraLinear.soma_matrizes(matriz_a, matriz_b)

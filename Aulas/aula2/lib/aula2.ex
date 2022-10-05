defmodule Aula2 do
  @moduledoc """
  Documentation for `Aula2`.
  """
  # _ ou _h informa que o parâmetro pode ser utilizado, em caso de não ter sido definido no escopo da função

  @doc "Informa o tamanho da lista"
  def tamanho([]), do: 0 # Clausula 1: Caso da lista ser vazia
  def tamanho([_h | t]), do: 1+ tamanho(t) # Clausula 2: para listas não vazias

  @doc "Obtem a soma dos numeros da lista"
  def soma_lista([]), do: 0
  def soma_lista([h | t]), do: h + soma_lista(t)

  @doc "Obtem o 2º elemento da lista"
  def segundo_elemento([]), do: nil
  def segundo_elemento([_]), do: nil
  def segundo_elemento([_h1 | [h2 | _t]]), do: h2
  # def segundo(l) do
  #   hd(tl(l))
  # end

  # Patern matching
  def replica(_s, 0), do: ""
  def replica(a, n), do: a <> replica(a, n-1)


  # def soma_lista(l) do
  #   # caso base
  #   if l == [] do
  #     0
  #   else
  #     soma_lista(tl(l)) + hd(l)
  #   end
  # end
end

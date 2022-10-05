# Aula 1, 02/09/2022
# Linguagem de Programação III c/ Elixir
# Samantha D. Medeiros

defmodule Aula1 do
  @moduledoc """
    Exercicio 1 da Disciplina LP3: Programação Funcional
  """
  #* Exemplos e anotações da aula
  # Versão longa de se escrever uma função
  def soma5(x) do
    x+5
  end

  # Versão curta de se escrever uma função
  def soma10(x), do: x+10

  # @doc "Soma os N primeiros números inteiros"
  # def somaN(n) do
  #   soma = 0

  #   for x <- 1..n do
  #     soma = soma + x
  #   end
  #   soma
  # end

  # Documentando uma função
  @doc "Verifica se um número é par."
  def numero_par(n) do
    if n == 0 do
      true
    else
      not numero_par(n - 1)
    end
  end

  # Caso recursivo
  # Para números > 0
  # Para a soma de m + n
  @doc "Obtem o antecessor do número n."
  def antecessor(n), do: n-1

  @doc "Obtem o sucessor do número n"
  def sucessor(n), do: n+1

  @doc "Soma os números n e m de maneira recursiva"
  def soma(n, m) do
    if m == 0 do
      n
    else
      # 1 + soma(n, m-1)
      # exemplo: soma(4,3), caso m != 0, ele faz
      # = 1 + soma(4, 2)
      # = 1 + 1 + soma(4, 1)
      # = 1 + 1 + 1 + soma(4, 0)
      # Em suma, incrementando n + 1 até m ser igual a 0
      1 + soma(n, antecessor(m))
    end
  end
end

defmodule Aula1Test do
  use ExUnit.Case
  doctest Aula1

  test "numero_par retorna true para um numero par" do
    assert Aula1.numero_par(6) == true
  end

  test "numero_par retorna false para um numero impar" do
    assert Aula1.numero_par(9) == false
  end
end

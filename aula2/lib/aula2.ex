defmodule aula2 do
  def maior_de_idade(idade), do: idade >= 18

  def quadrado(x), do: x * x

  def menor(x,y) do
    cond do
      x < y -> x
      x >= y -> y  
    end
  end

  def maior(x,y) when x >= y, do: x

  def maior(x,y) when x < y, do: y

  def valor_absoluto(x) do
    cond do
      x >= 0 -> x
      x < 0 -> -x
    end
  end

  def par(x), do: rem(x,2) == 0

  def soma_lista([]), do: 0

  def soma_lista([head | tail]), do: head + soma_lista(tail)

  def quadrado_lista([]), do: []

  def quadrado_lista([head | tail]), do: [head * head | quadrado_lista(tail)]
end

defmodule Ex2 do
  import aula2

  def quatro_iguais(x,y,z,t), do: x == y and x == z and z == t

  def todos_diferentes(x,y,z), do: x != y and x != z and y != z

  def quantos_iguais(x,y,z) do
    cond do
      todos_diferentes(x,y,z) -> 0
      x == y and x == z -> 3
      x == y or x == z or y == z -> 2
    end
  end

  def elevado_dois(n), do: n*n

  def elevado_quatro(n), do: elevado_dois(elevado_dois(n))

  def palindromo?(string), do: String.reverse(string) == string

  def verifica_triangulo(x,y,z), do: x + y > z and x + z > y and y + z > x

  def sinal(x) do
    cond do
      x > 0 -> 1
      x < 0 -> -1
      x == 0 -> 0
    end
  end

  def menor_tres(x,y,z), do: menor(menor(x,y), z)
end


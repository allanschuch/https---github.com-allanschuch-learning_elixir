defmodule Fat do

  def fat(n) when n <= 1, do: 1

  def fat(n) when n > 0, do: n * fat(n-1)
end


defmodule aula4 do
  def mult_dois_lista([]), do: []

  def mult_dois_lista([head | tail]), do: [head * 2 | mult_dois_lista(tail)]

  def tamanho([]), do: 0

  def tamanho([_head | tail]), do: 1 + tamanho(tail)

  def produto_lista([]), do: 0

  def produto_lista([head |  tail]) do
    cond do
      tamanho(tail) != 0 -> head * produto_lista(tail)
      true -> head
    end
  end

  def and_lista([]), do: nil

  def and_lista([head | tail]) do
    cond do
      tamanho(tail) != 0 -> head && and_lista(tail)
      true -> head
    end
  end

  def insere_final(elemento, []), do: [elemento]

  def insere_final(elemento, [head | tail]), do: [head] ++ insere_final(elemento, tail)

  def not_lista([]), do: []

  def not_lista([head | tail]), do: [not head | not_lista(tail)]

  def join([],lista), do: lista

  def join([head | tail], lista), do: [head | join(tail, lista)]

  def concat_lista([]), do: []

  def concat_lista([head | tail]), do: join(head,concat_lista(tail))

  def inverte_lista([]), do: []

  def inverte_lista([head | tail]), do: inverte_lista(tail) ++ [head]
end

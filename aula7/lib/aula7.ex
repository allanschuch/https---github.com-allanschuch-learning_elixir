defmodule Aula7 do
  def aplica_duas_vezes(x, f), do: f.(f.(x))

  def iter(0, value, _f), do: value

  def iter(num, value, f) when num >= 1, do: iter(num-1, f.(value), f)

  def filter([], _f), do: []

  def filter([h|t], f) do
    cond do
      f.(h) == true -> [h|filter(t,f)]
      true -> filter(t,f)
    end
  end

  def reduce([], acc, _f), do: acc

  def reduce([h|t], acc, f), do: reduce(t, f.(acc, h), f)

  def foldr([], acc, _f), do: acc

  def foldr([h|t], acc, f), do: f.(foldr(t, acc, f), h)

  def concatena([]), do: []

  def concatena(x), do: foldr(x, [], &(&1 ++ &2)) 

  def map([], _f), do: []

  def map([h|t], f), do: [f.(h) | map(t,f)]

  def soma_quad_pos([]), do: 0

  def soma_quad_pos(x), do: reduce(map(filter(x,&(&1>=0)),&(&1*&1)),0,&(&1+&2))

  def pow(_x,0), do: 1
  
  def pow(x,y), do: x * pow(x,y-1)

  def conta_lista([]), do: 0

  def conta_lista(x), do: reduce(map(x,&(pow(&1,0))),0,&(&1 + &2))

  def conta_neg([]), do: 0

  def conta_neg(x), do: reduce(map(x,&(if &1 < 0, do: 1, else: 0)),0,&(&1 + &2))

  def soma_lista_listas([]), do: 0

  def soma_lista_listas(x), do: reduce(map(x,&reduce(&1,0,fn(a,b)->a+b end)),0,&(&1+&2))

end

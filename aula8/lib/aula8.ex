defmodule Aula8 do

  def conta_positivos(l) do
    l
    |> Enum.filter(fn(x) -> x>=0 end)
    |> Enum.map(fn(_x) -> 1 end)
    |> Enum.reduce(0,fn(x,y) -> x + y end)
  end

  def retorna_com_desconto(l) do
    l
    |> Enum.filter(fn({_produto,quant,_preço}) -> quant > 5 end)
    |> Enum.map(fn({produto,quant,preço}) -> {produto,quant,preço * 0.9} end)
  end

  def calcula_faturamento(l) do
    l
    |> Enum.map(fn({_produto,quant,preço}) -> quant * preço end)
    |> Enum.reduce(0,fn(x,y) -> x + y end)
  end

end

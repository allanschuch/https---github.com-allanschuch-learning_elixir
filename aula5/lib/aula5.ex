defmodule InsertionSort do

  def ins(item,[]), do: [item]

  def ins(item,[head|tail]) do
    cond do
      item < head -> [item|[head|tail]]
      item == head -> [head|tail]
      true -> [head|ins(item,tail)]
    end
  end

  def insertion_sort([]), do: []

  def insertion_sort([head|tail]), do: ins(head,insertion_sort(tail))

  def menor([]), do: nil
  
  def menor(list) do
    [head|_tail] = insertion_sort(list)
    head
  end

  defp maior_aux([head|[]]), do: head

  defp maior_aux([_head|tail]), do: maior_aux(tail)

  def maior(list), do: maior_aux(insertion_sort(list))
end

defmodule aula5 do

  def membro([head|tail],inteiro) do
    cond do
      head == inteiro -> true
      tail != [] -> membro(tail,inteiro)
      true -> false
    end
  end

  def quantas_vezes([],_inteiro), do: 0

  def quantas_vezes([head|tail],inteiro) do
    cond do
      head == inteiro -> 1 + quantas_vezes(tail,inteiro)
      true -> 0 + quantas_vezes(tail,inteiro)
    end
  end

  def membro_alt(list,inteiro) do
    cond do
      quantas_vezes(list,inteiro) >= 1 -> true
      true -> false
    end
  end

  defp unicos_aux([],_list), do: []

  defp unicos_aux([head|tail],list) do
    cond do
      quantas_vezes(list,head) == 1 -> [head | unicos_aux(tail,list)]
      true -> unicos_aux(tail,list)
    end
  end

  def unicos(list), do: unicos_aux(list,list)

  def quick_sort([]), do: []

  def quick_sort([h|t]), do: quick_sort(menores(h,t)) ++ [h] ++ quick_sort(maiores(h,t))

  def menores(_pivo,[]), do: []

  def menores(pivo,[head|tail]) do
    cond do
      head <= pivo -> [head | menores(pivo,tail)]
      true -> menores(pivo,tail)
    end
  end

  def maiores(_pivo,[]), do: []
  
  def maiores(pivo,[head|tail]) do
    cond do
      head > pivo -> [head | maiores(pivo,tail)]
      true -> maiores(pivo,tail)
    end
  end
end

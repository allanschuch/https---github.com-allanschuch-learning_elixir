defmodule aula3 do
  def vendas(0), do: 33
  def vendas(1), do: 22
  def vendas(2), do: 18
  def vendas(3), do: 0
  def vendas(4), do: 66
  def vendas(_n), do: 22

  def vendas_total(n) when n == 0, do: vendas(0)

  def vendas_total(n) when n > 0, do: vendas(n) + vendas_total(n-1)
end

defmodule Ex3 do

  import Vendas

  def maxi(x,y) do
    cond do
      x >= y -> x
      y > x -> y
    end
  end

  def maior_venda(n) when n == 0, do: vendas(0)

  def maior_venda(n) when n > 0, do: maxi(vendas(n), maior_venda(n-1))

  def semana_max_venda(0), do: 0

  def semana_max_venda(n) when n > 0 do
    cond do
      maior_venda(n) == vendas(n) -> n
      true -> semana_max_venda(n-1)
    end
  end

  def semana_max_venda(m,n) when n == m, do: n

  def semana_max_venda(m,n) when n > m do
    cond do
      vendas(n) == maior_venda(n) -> n
      true -> semana_max_venda(m,n-1)
    end
  end

  def zero_vendas(0) do
    cond do
      vendas(0) == 0 -> 0
      true -> -1
    end
  end

  def zero_vendas(n) do
    cond do
      vendas(n) == 0 -> n
      true -> zero_vendas(n-1)
    end
  end

   def zero_vendas(m,n) when m == n do
    cond do
      vendas(n) == 0 -> n
      true -> -1
    end
  end

  def zero_vendas(m,n) when n > m do
    cond do
      vendas(n) == 0 -> n
      true -> zero_vendas(m,n-1)
    end
  end

  def acha_semana(s,0) do
    cond do
      vendas(0) == s -> 0
      true -> -1
    end
  end 

  def acha_semana(s,n) do
    cond do
      vendas(n) == s -> n
      true -> acha_semana(s,n-1)
    end
  end

  def acha_semana(s,m,n) when m == n do
    cond do
      vendas(n) == s -> n
      true -> -1
    end
  end 

  def acha_semana(s,m,n) when n > m do
    cond do
      vendas(n) == s -> n
      true -> acha_semana(s,m,n-1)
    end
  end

  def zero_vendas_2(n), do: acha_semana(0,n)

  def multiplica_intervalo(m,n) when m == n, do: n

  def multiplica_intervalo(m,n) when m < n, do: m * multiplica_intervalo(m+1,n)

  def pow(base,expoente) do
    cond do
      expoente == 0 -> 1
      true -> base * pow(base,expoente-1)
    end
  end

  def fib(0), do: 0

  def fib(1), do: 1

  def fib(n), do: fib(n-1) + fib(n-2)
end


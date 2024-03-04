

defmodule aula6 do

  def soma_tuplas({{x,y},{z,t}}), do: x+y+z+t

  def shift({{x,y},z}), do: {x,{y,z}}

  def min_e_max(x,y,z), do: {min(x,y,z),max(x,y,z)}
  
  defp min(x,y,z) do
    cond do
      x < y and x < z -> x
      y < x and y < z -> y
      z < x and z < y -> z
    end
  end

  defp max(x,y,z) do
    cond do
      x > y and x > z -> x
      y > x and y > z -> y
      z > x and z > y -> z
    end
  end

  def soma_lista_tuplas([{x,y}|[]]), do: x + y
    
  def soma_lista_tuplas([{x,y}|tail]) do
    x + y + soma_lista_tuplas(tail)
  end

  def zip([head1|[]], [head2|_tail2]), do: [{head1,head2}]

  def zip([head1|_tail1], [head2|[]]), do: [{head1,head2}]

  def zip([head1|tail1], [head2|tail2]), do: [{head1,head2} | zip(tail1,tail2)]

  def zip3([head1|[]], [head2|_tail2], [head3|_tail3]), do: [{head1,head2,head3}]

  def zip3([head1|_tail1], [head2|[]], [head3|_tail3]), do: [{head1,head2,head3}]

  def zip3([head1|_tail1], [head2|_tail2], [head3|[]]), do: [{head1,head2,head3}]

  def zip3([head1|tail1], [head2|tail2], [head3|tail3]), do: [{head1,head2,head3} | zip3(tail1,tail2,tail3)]

  def unzip_esq([{x,_y}|[]]), do: [x]

  def unzip_esq([{x,_y}|tail]), do: [x|unzip_esq(tail)]

  def unzip_dir([{_x,y}|[]]), do: [y]

  def unzip_dir([{_x,y}|tail]), do: [y|unzip_dir(tail)]

  def unzip(list), do: {unzip_esq(list),unzip_dir(list)}
end

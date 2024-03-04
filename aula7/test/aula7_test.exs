defmodule Aula7Test do
  use ExUnit.Case
  doctest Aula7

  test "iter" do
    assert Aula7.iter(3, 1, &(1 + &1)) == 4
    assert Aula7.iter(0, 1, &(1 + &1)) == 1
    assert Aula7.iter(1, 1, &(1 + &1)) == 2
  end

  test "aplica_duas_vezes" do
    assert Aula7.aplica_duas_vezes(1, &(1 + &1)) == 3
  end

  test "filter" do
    assert Aula7.filter([1,2,3,4,5], &(&1 >= 3)) == [3,4,5]
    assert Aula7.filter([], &(&1 >= 3)) == []
    assert Aula7.filter([1, 2, 3, 4, 5, 6], fn x -> rem(x, 2) == 0 end) == [2,4,6]
  end

  test "reduce" do
    assert Aula7.reduce([1,2,3,4],0, fn (x,y) -> x + y end) == 10
    assert Aula7.reduce([1,2,3,4],0, fn (x,y) -> x * y end) == 0
    assert Aula7.reduce([1,2,3,4],1, fn (x,y) -> x * y end) == 24
  end

  test "foldr" do
    assert Aula7.foldr([1,2,3,4],0, fn (x,y) -> x + y end) == 10
    assert Aula7.foldr([1,2,3,4],0, fn (x,y) -> x * y end) == 0
    assert Aula7.foldr([1,2,3,4],1, fn (x,y) -> x * y end) == 24
  end

  test "concatena" do
    assert Aula7.concatena([[1,2],[4,6],[8,9,10]]) == [8,9,10,4,6,1,2]
    assert Aula7.concatena([]) == []
  end

  test "map" do
    assert Aula7.map([1,2,3], &(&1 + 1)) == [2,3,4]
    assert Aula7.map([1,2,3], &(&1 * 2)) == [2,4,6]
    assert Aula7.map([], &(&1 + 1)) == []
  end

  test "soma_quad_pos" do
    assert Aula7.soma_quad_pos([-2,-4,2,5]) == 29
    assert Aula7.soma_quad_pos([]) == 0
    assert Aula7.soma_quad_pos([0,0]) == 0
    assert Aula7.soma_quad_pos([-3,-1,-1343]) == 0
  end

  test "conta_lista" do
    assert Aula7.conta_lista([1,2,3,4,5]) == 5
    assert Aula7.conta_lista([{2,3}]) == 1
    assert Aula7.conta_lista([]) == 0
  end

  test "pow" do
    assert Aula7.pow(2,2) == 4
    assert Aula7.pow(2,0) == 1
    assert Aula7.pow(0,0) == 1
    assert Aula7.pow(0,1) == 0
  end

  test "conta_neg" do
    assert Aula7.conta_neg([-1,0,-3,4,5]) == 2
    assert Aula7.conta_neg([0]) == 0
    assert Aula7.conta_neg([]) == 0
  end

  test "soma_lista_listas" do
    assert Aula7.soma_lista_listas([[1,2],[3,4,5],[1,2]]) == 18
    assert Aula7.soma_lista_listas([]) == 0
    assert Aula7.soma_lista_listas([[1]]) == 1
    assert Aula7.soma_lista_listas([[1,2],[-2],[]]) == 1 
  end
end

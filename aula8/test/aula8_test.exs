defmodule Aula8Test do
  use ExUnit.Case
  doctest Aula8

  test "conta_positivos" do
    assert Aula8.conta_positivos([1,24,-2,-6,0,4]) == 4
    assert Aula8.conta_positivos([1,24,-2,-6,4]) == 3
    assert Aula8.conta_positivos([-1,-24,-2,-6,-4]) == 0
  end

  test "retorna_com_desconto" do
    assert Aula8.retorna_com_desconto([{"prod1",6,10},{"prod2",4,10},{"prod3",33,1}]) == [{"prod1",6,9},{"prod3",33,0.9}]
    assert Aula8.retorna_com_desconto([{"prod1",4,10},{"prod2",4,10},{"prod3",5,1}]) == []
  end

  test "calcula_faturamento" do
    assert Aula8.calcula_faturamento([{"prod1",6,10},{"prod2",4,10},{"prod3",33,1}]) == 133
    assert Aula8.calcula_faturamento([{"prod1",6,0},{"prod2",4,0},{"prod3",33,0}]) == 0
    assert Aula8.calcula_faturamento([]) == 0
  end

end

defmodule Aula10 do

  def start() do
    pid1 = spawn(fn -> Aula10.my_process() end) 
    pid2 = spawn(fn -> Aula10.resp_process() end)
    {pid1, pid2}
  end

  def my_process() do
    receive do
      value -> IO.puts("Resultado: #{value}")
      my_process()
    end
  end

  def resp_process() do
    receive do
      {:standard, value} ->
        IO.puts "Mensagem recebida: #{value}"
      {:soma,n1,n2,pid} ->
        send(pid,n1+n2)
        resp_process()
      {:mult,n1,n2,pid} ->
        send(pid,n1*n2)
        resp_process()
      :die              -> IO.puts("Tchau!")
    end
  end
end

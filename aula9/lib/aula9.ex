defmodule Aula9 do
  def le_nome_endereço() do
    nome = IO.gets("Digite seu nome: ") |> String.trim()
    endereco = IO.gets("Digite o endereco: ") |> String.trim()

    {nome,endereco}
  end

  def print_lista([]), do: IO.puts("Fim!")

  def print_lista([h|t]) do
    IO.puts(h)
    print_lista(t)
  end

  def le_n_nome_endereco(0), do: []

  def le_n_nome_endereco(n), do: [le_nome_endereço()|le_n_nome_endereco(n-1)]
end

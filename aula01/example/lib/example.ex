defmodule Example do
  use Application


  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    name = "Ricardo"
    status = Enum.random([:gold, :silver, :bronze])

    if status === :gold do
      IO.puts("Bem vindo, #{name}")
    else
      IO.puts("Faça upgrade para gold")
    end
  end
end

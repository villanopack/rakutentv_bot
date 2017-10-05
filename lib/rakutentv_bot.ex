defmodule RakutentvBot do
  def start(_type, _args) do
    import Supervisor.Spec
    children = [supervisor(RakutentvBot.Bot, [[name: RakutentvBot.Bot]])]
    {:ok, _pid} = Supervisor.start_link(children, strategy: :one_for_one)
  end
end

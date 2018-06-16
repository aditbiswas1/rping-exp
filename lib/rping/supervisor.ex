defmodule Rping.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], [name: :rping_sup])
  end

  def init(_args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Rping.Worker.start_link(arg)
      # {Rping.Worker, arg},
      %{
        id: Rping.VNode_master_worker,
        start: {:riak_core_vnode_master, :start_link, [Rping.VNode]}
      }
    ]
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, max_restarts: 5, max_seconds: 10]
    Supervisor.init(children, opts)
  end
end

defmodule Rping.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  def start(_type, _args) do
    case Rping.Supervisor.start_link do
      {:ok, pid} ->
        :ok = :riak_core.register(vnode_module: Rping.VNode)
        :ok = :riak_core_node_watcher.service_up(Rping.Service, self())
        {:ok, pid}
      {:error, reason} ->
        Logger.error("Unable to start Rping Supervisor because #{inspect reason}")
    end
  end
end

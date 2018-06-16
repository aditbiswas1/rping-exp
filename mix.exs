defmodule Rping.MixProject do
  use Mix.Project

  def project do
    [
      app: :rping,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:riak_core, :logger],
      mod: {Rping.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:riak_core, "~> 3.0.9", hex: :riak_core_ng},
      {:cuttlefish, github: "Kyorai/cuttlefish", ref: "649cda2828ef939126a20faa5d0ee0a2ab69f9a6", override: true},
      {:lager, github: "basho/lager", tag: "3.2.4", manager: :rebar3, override: true},
      {:goldrush, github: "basho/goldrush", tag: "0.1.9", manager: :rebar3, override: true}
    ]
  end
end

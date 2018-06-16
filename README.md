# Rping

Distributed ping using Using elixir and riak_core.
Works for OTP-20 but requires some changes to poolboy, cuttlefish, riak_ensemble and riak_core rebar.config
remove warnings_as_errors on poolboy, cuttlefish, riak_ensemble and riak_core
remove provider_hooks on cuttle_fish

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `rping` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:rping, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/rping](https://hexdocs.pm/rping).

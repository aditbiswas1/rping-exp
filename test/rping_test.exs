defmodule RpingTest do
  use ExUnit.Case
  doctest Rping

  test "greets the world" do
    assert Rping.hello() == :world
  end
end

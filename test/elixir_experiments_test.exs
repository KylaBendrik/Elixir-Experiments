defmodule ElixirExperimentsTest do
  use ExUnit.Case
  doctest ElixirExperiments

  test "greets the world" do
    assert ElixirExperiments.hello() == :world
  end
end

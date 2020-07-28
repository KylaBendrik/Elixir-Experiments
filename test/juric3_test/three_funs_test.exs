defmodule Juric3.ThreeFunsTest do
  use ExUnit.Case
  doctest Juric3.ThreeFuns

  test "list_len returns the length of a list" do
    input = ~w[a b c d e f]
    assert Juric3.ThreeFuns.list_len(input) == 6
  end
  
  test "range returns a list of all numbers in the given range" do
    from = 1
    to = 5
    assert Juric3.ThreeFuns.range(from, to) == [1, 2, 3, 4, 5]
  end
  
  test "range returns a list of one number when from and to are the same" do
    from = 1
    to = 1
    assert Juric3.ThreeFuns.range(from, to) == [1]
  end
end

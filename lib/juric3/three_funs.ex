defmodule Juric3.ThreeFuns do
  def list_len([]), do: 0
  def list_len([_head | tail]) do
    # returns length of a list
    1 + list_len(tail)
  end
  
  def range(from, to) when from == to do
    [from]
  end
  def range(from, to) do
    [from | range(from + 1, to)]
  end
  def positive([]), do: []
  def positive([head | tail]) when head > -1 do
    [head | positive(tail)]
  end
  def positive([head | tail]) when head < 0 do
    positive(tail)
  end
  
end

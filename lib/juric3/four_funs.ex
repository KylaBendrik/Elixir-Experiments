defmodule Juric3.FourFuns do
  def large_lines!(path, filter \\ 80) do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.filter(&(String.length(&1) > filter))
   end
   
  def lines_lengths!(path) do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.map(&String.length(&1))
  end
  
  def longest_line_length!(path) do
    Enum.max(lines_lengths!(path))     
  end
  
  def longest_line!(path)do
    filter = longest_line_length!(path)
    large_lines!(path, filter - 1)
  end
  
  def words_per_line!(path)do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.map(&length(String.split(&1)))
  end
end

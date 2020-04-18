defmodule Sublist do
  @moduledoc """
  sublist operations
  """

  @doc """
  find index of a sublist in a list

  ## Examples

      iex> Sublist.index [0,1,1,2,3,4], [1,2,3]
      2

      iex> Sublist.index [0,0,2,3,4], [1,2,3]
      -1

  """
  def index(list, sublist) when is_list(list) and is_list(sublist),
    do: index(list, sublist, 0)

  defp index([], _, _n), do: -1

  defp index([a | rest2], [a | rest1] = sub, n) do
    if index2(rest2, rest1) < 0 do
      index(rest2, sub, n + 1)
    else
      n
    end
  end

  defp index([_ | rest2], sub, n) do
    index(rest2, sub, n + 1)
  end

  defp index2(_rest, []), do: 0

  defp index2([a | rest2], [a | rest1]),
    do: index2(rest2, rest1)

  defp index2(_, _), do: -1
end

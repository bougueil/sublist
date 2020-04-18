defmodule SublistTest do
  use ExUnit.Case
  doctest Sublist

  test "assert found" do
    assert Sublist.index([0, 1, 1, 2, 1, 1, 2, 1, 2, 3, 4], [1, 2, 3]) == 7
  end

  test "assert not found" do
    assert Sublist.index([0, 0, 2, 3, 4], [1, 2, 3]) == -1
  end
end

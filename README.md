# Sublist
A collection of algos in Elixir not easily found on the Internet

```elixir
  Examples

  find the index of a sublist in a list

      iex> Sublist.index([0,1,1,2,3,4], [1,2,3])
      2

      iex> Sublist.index([0,0,2,3,4], [1,2,3])
      -1
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sublist` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sublist, "~> 0.1.0"}
  ]
end
```


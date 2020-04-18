defmodule Sublist.MixProject do
  use Mix.Project

  def project do
    [
      app: :sublist,
      version: "0.1.0",
      elixir: "~> 1.7",
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.20", only: :docs}
    ]
  end

  defp package do
    %{
      licenses: ["Apache-2.0"],
      maintainers: ["Renaud Mariana"],
      links: %{"GitHub" => "https://github.com/bougueil/sublist"},
      files: ["lib", "mix.exs", "README.md", ".formatter.exs"]
    }
  end
end

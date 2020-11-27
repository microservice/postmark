defmodule Postmark.MixProject do
  use Mix.Project

  def project do
    [
      app: :postmark,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Postmark, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:confex, "~> 3.3.1"},
      {:cowboy, "~> 1.0.0"},
      {:distillery, "~> 1.5.2"},
      {:plug, "~> 1.0"},
      {:plug_cowboy, "~> 1.0"},
      {:poison, "~> 3.1"},
      {:tesla, "~> 1.4.0"}
    ]
  end
end

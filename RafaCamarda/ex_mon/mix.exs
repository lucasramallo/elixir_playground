defmodule ExMon.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_mon,
      version: "0.1.0",
<<<<<<< HEAD
      elixir: "~> 1.13",
=======
      elixir: "~> 1.15",
>>>>>>> 29eb2eb6626788e046f5b12ea0b22ef375898c7c
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
<<<<<<< HEAD
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
=======
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
>>>>>>> 29eb2eb6626788e046f5b12ea0b22ef375898c7c
    ]
  end
end

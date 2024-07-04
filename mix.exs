defmodule HelloGithub.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :hello_github,
      version: @version,
      elixir: "~> 1.17",
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
      {:git_ops, "~> 2.6.1", only: [:dev]}
    ]
  end
end

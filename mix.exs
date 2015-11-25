defmodule ExMyTips.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_my_tips,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [
        :logger,
        :httpoison,
        :faker
      ]
    ]
  end

  defp deps do
    [
      {:poison, "~> 1.5"},   # fot JSON
      {:cowboy, "~> 1.0.0"}, # for Plug
      {:plug, "~> 1.0"},     # for Plug
      {:httpoison, "~> 0.8"},# for HTTP requests
      {:faker, "~> 0.6.0"}   # for fake data
    ]
  end
end

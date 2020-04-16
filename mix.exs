defmodule DrunkenSavantsAlice.MixProject do
  use Mix.Project

  def project do
    [
      app: :drunken_savants_alice,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:alice],
      mod: {Alice, %{}}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:alice, "~> 0.4.3", github: "alice-bot/alice", override: true},
      #{:alice, "~> 0.4", path: "/code/alice", override: true},
      {:alice_roller,       "~> 0.3.1"},
      {:alice_good_morning, "~> 1.0"},
      {:alice_karma,        "~> 0.3"}
    ]
  end
end

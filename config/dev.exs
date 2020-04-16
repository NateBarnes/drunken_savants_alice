use Mix.Config

config :alice,
  state_backend: :redis,
  redis: "redis://localhost"

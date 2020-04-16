use Mix.Config

config :alice,
  state_backend: :redis,
  redis: System.get_env("REDIS_URL"),

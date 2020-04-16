use Mix.Config

case Mix.env() do
  env when env in [:dev] -> import_config "#{env}.exs"
  _other -> import_config "other.exs"
end

config :alice,
  api_key: System.get_env("SLACK_API_TOKEN"),
  handlers: [
    Alice.Handlers.Roller,
    Alice.Handlers.GoodMorningLanguages,
    Alice.Handlers.Karma
  ]

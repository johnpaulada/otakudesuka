# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :otakudesuka,
  ecto_repos: [Otakudesuka.Repo]

# Configures the endpoint
config :otakudesuka, OtakudesukaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qgt090Led5dA1oqL4Zgy3rEPWK36cDjD+1Si0npazaTsU4JYLvS6fUMPNavjf+G/",
  render_errors: [view: OtakudesukaWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Otakudesuka.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

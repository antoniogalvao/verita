# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :verita,
  ecto_repos: [Verita.Repo]

# Configures the endpoint
config :verita, VeritaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GBH0xdgQVi1ZBcVHXkTXA6dIGfUb06LnNgItfhanM/dIaSTj+esz7hccJjGN0MJ1",
  render_errors: [view: VeritaWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Verita.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

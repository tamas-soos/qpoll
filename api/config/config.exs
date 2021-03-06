# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :qpoll,
  ecto_repos: [Qpoll.Repo]

# Configures the endpoint
config :qpoll, QpollWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0puLLmO2OcWp86LnzHRKuDARjz/tRjq/kCJVrOdPE2tGIuWbtDK0ixliFDe1LMyh",
  render_errors: [view: QpollWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Qpoll.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Test Watch config
if Mix.env() == :dev do
  config :mix_test_watch,
    clear: true
end

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

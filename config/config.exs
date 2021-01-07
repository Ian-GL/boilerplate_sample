# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :boilerplate_sample,
  ecto_repos: [BoilerplateSample.Repo]

# Configures the endpoint
config :boilerplate_sample, BoilerplateSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OiO5+VRBdfqTUsAmTpQjaNwyCMOh4wTF1eZp6R0bW2s9ZLdrwvo41u66T/4TLkhn",
  render_errors: [view: BoilerplateSampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BoilerplateSample.PubSub,
  live_view: [signing_salt: "hHANjOnP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

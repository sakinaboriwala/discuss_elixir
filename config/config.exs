# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Z5wXWM528GaFPJ+NAn9Chv5LDxuaJPWJbH1vvRg9fi8T1T8UwRXxZVc7CD9GYmGU",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"


#Configure OAuth

config :ueberauth, Ueberauth,
  providers: [
    github: { Ueberauth.Strategy.Github, [default_scope: "user,public_repo"] }
  ]

# Configure Github OAuth

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "3b1c94dd94481b3eaf7d",
  client_secret: "a07c431526cd756913d466f8036325993bf5ae6e"


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
  secret_key_base: "yVWxXznk2WqCcwlfh3JkKNiPIkgHfYBa+gq3vMbSg4OnPCTva7cRrveyLT1saHVx",
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

config :ueberauth, Ueberauth,
  providers: [
  		github: { Ueberauth.Strategy.Github, [] }	
  ] 
	
config :ueberauth, Ueberauth.Strategy.Github.Oauth,
  client_id: "e5e64f0613a9b25ca736",
  client_secret: "8eca6bfe9d68b48ec6fde84913b62cc80a582fdd"
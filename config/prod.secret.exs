use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :discuss, Discuss.Endpoint,
  secret_key_base: "YYMrGuSg2gIegP3rngPcRDx2hT6xdmR6UJ08Id3kvkpS43So2KiQjHhzCxuNIRna"

# Configure your database
config :discuss, Discuss.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "discuss_prod",
  pool_size: 20

use Mix.Config

config :maru, PolychatElixirBackend,
    http: [port: 3002]

config :polychat_elixir_backend, ecto_repos: [PolychatElixirBackend.Repo]

config :polychat_elixir_backend, PolychatElixirBackend.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "polychat",
  username: "root",
  password: "Cd38qwkMq1Ev",
  hostname: "localhost"
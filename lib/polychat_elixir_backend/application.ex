defmodule PolychatElixirBackend.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(PolychatElixirBackend.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: PolychatElixirBackend.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

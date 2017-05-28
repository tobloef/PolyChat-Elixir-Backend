defmodule PolychatElixirBackend.Mixfile do
  use Mix.Project

  def project do
    [app: :polychat_elixir_backend,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {PolychatElixirBackend.Application, []}
    ]
  end
  
  defp deps do
    [
      {:maru, "~> 0.11"},
      {:ecto, "~> 2.1"},
      {:mariaex, "~> 0.8.2"}
    ]
  end
end

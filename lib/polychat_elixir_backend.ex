defmodule PolychatElixirBackend do
  import Ecto.Query, only: [from: 2]

  use Maru.Router

  plug Plug.Logger

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  namespace :api do
    get "ping" do
      conn |> text("pong")
    end

    namespace :messages do
      params do
        requires "amount", type: Integer, default: 1000, values: 0..1000
      end
      get do
        messages = PolychatElixirBackend.Repo.all(from m in PolychatElixirBackend.Message, join: u in PolychatElixirBackend.User, where: m.user_id==u.id, select: %{nickname: u.nickname, content: m.content}, order_by: [desc: m.id], limit: ^params["amount"])
        conn |> json(messages)
      end
    end
  end
end

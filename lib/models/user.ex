defmodule PolychatElixirBackend.User do
    use Ecto.Schema

    schema "users" do
        field :nickname, :string
    end
end
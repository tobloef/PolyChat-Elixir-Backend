defmodule PolychatElixirBackend.Message do
    use Ecto.Schema

    schema "messages" do
        field :nickname, :string
        field :content, :string
    end
end
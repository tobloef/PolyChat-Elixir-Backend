defmodule PolychatElixirBackend.Websocket do
    def run do
        IO.puts "Listening..."
        serverTest = Socket.Web.listen! 3003
        receive_connection(serverTest)
    end

    defp receive_connection(serverTest) do
        client = serverTest |> Socket.Web.accept!
        IO.puts "CONNECTION!"
        client |> Socket.Web.close
        receive_connection(serverTest)
    end
end
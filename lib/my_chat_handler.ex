defmodule UseElixirThrift.MyChatHandler do
  use GenServer
  alias UseElixirThrift.MyChatMessage

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, Keyword.merge(opts, name: __MODULE__))
  end

  def init(:ok) do
    db = :ets.new(:users, [:public, :named_table, read_concurrency: true])
    {:ok, db}
  end

  def send_message(senderId, recieveId, message) do
    IO.inspect("got a message: " <> message)
    :ok
  end

  def recieve_message(senderId, recieveId, message) do
    IO.inspect("recieved a message: " <> message)
    :ok
  end
end

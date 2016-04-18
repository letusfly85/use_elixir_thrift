defmodule UseElixirThrift.MyChatClient do
  use Riffed.Client,
  auto_import_structs: false,
  structs: UseElixirThrift.MyChatMessage,
  client_opts: [
    host: "localhost",
    port: 2112,
    retries: 3,
    framed: true],
  service: :my_chat_service_thrift,
  import: [:sendMessage,
          :recieveMessage]
end

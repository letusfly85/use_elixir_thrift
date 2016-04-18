defmodule UseElixirThrift.MyChatServer do
  use Riffed.Server,
  auto_import_structs: false,
  service: :my_chat_service_thrift,
  structs: UseElixirThrift.MyChatMessage,
  functions: [sendMessage:    &UseElixirThrift.MyChatHandler.send_message/3,
              recieveMessage: &UseElixirThrift.MyChatHandler.recieve_message/3
  ],
  server: {:thrift_socket_server,
           port: 2112,
           framed: true,
           max: 10_000,
           socket_opts: [
             recv_timeout: 3000,
             keepalive: true
           ]
          }
end

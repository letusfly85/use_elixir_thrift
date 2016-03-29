defmodule ExampleServer do
  use Riffed.Server,
  service: :my_chat_service_thrift,
  structs: Data,
  functions: [sendMessage: &ThriftHandlers.send_message/1,
              recieveMessage: &ThriftHandlers.recieve_message/1
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

%%
%% Autogenerated by Thrift Compiler (0.9.3)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(my_chat_types).

-include("my_chat_types.hrl").

-export([struct_info/1, struct_info_ext/1]).

struct_info('MyChatMessage') ->
  {struct, [{1, i32},
          {2, i32},
          {3, string}]}
;

struct_info(_) -> erlang:error(function_clause).

struct_info_ext('MyChatMessage') ->
  {struct, [{1, undefined, i32, 'senderId', undefined},
          {2, undefined, i32, 'recieverId', undefined},
          {3, undefined, string, 'message', undefined}]}
;

struct_info_ext(_) -> erlang:error(function_clause).


-ifndef(_example_types_included).
-define(_example_types_included, yeah).

%% struct 'MyChatMessage'

-record('MyChatMessage', {'senderId' :: integer(),
                          'recieverId' :: integer(),
                          'message' :: string() | binary()}).
-type 'MyChatMessage'() :: #'MyChatMessage'{}.

-endif.

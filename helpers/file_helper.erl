-module(file_helper).
-export([readfile/1, readfile/2]).

readfile(FileName, F) ->
    Lines = readfile(FileName),
    lists:map(F, Lines).

readfile(FileName) ->
    {ok, Binary} = file:read_file(FileName),
    binary:split(Binary, <<"\r\n">>, [global, trim]).

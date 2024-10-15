-module(type_helper).
-export([is_digit/1]).

is_digit(Char) ->
    Char >= $0 andalso Char =< $9.

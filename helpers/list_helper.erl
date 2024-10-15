-module(list_helper).
-export([first/2, last/2, last/3]).

first(_, []) ->
    none;
first(F, [H | T]) ->
    case F(H) of
        true -> H;
        false -> first(F, T)
    end.

last(F, L) -> last(F, L, none).
last(_, [], Acc) ->
    Acc;
last(F, [H | T], Acc) ->
    case F(H) of
        true -> last(F, T, H);
        false -> last(F, T, Acc)
    end.

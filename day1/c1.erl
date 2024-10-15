-module(c1).
-export([solve/0]).
-import(file_helper, [readfile/1, readfile/2]).
-import(list_helper, [first/2, last/2]).
-import(type_helper, [is_digit/1]).

solve() ->
    Lines = file_helper:readfile("day1/day1.txt", fun binary_to_list/1),
    Numbers = lists:map(fun extract_numbers/1, Lines),
    io:format("Result: ~p\n", [lists:sum(Numbers)]).

extract_numbers(Line) ->
    First = first(fun(N) -> is_digit(N) end, Line),
    Last = last(fun(N) -> is_digit(N) end, Line),
    list_to_integer([First, Last]).

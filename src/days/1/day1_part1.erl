-module(day1_part1).
-export([solve/0]).
-import(file_helper, [readfile/2]).
-import(list_helper, [first/2, last/2]).
-import(type_helper, [is_digit/1]).

solve() ->
    Lines = file_helper:readfile("src/days/1/day1.txt", fun(Line) ->
        extract_numbers(binary_to_list(Line))
    end),
    io:format("Result: ~p\n", [lists:sum(Lines)]).

extract_numbers(Line) ->
    First = first(fun(N) -> is_digit(N) end, Line),
    Last = last(fun(N) -> is_digit(N) end, Line),
    list_to_integer([First, Last]).

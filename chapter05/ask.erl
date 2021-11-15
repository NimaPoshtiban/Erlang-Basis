-module(ask).
-export([term/0]).
-import(drop,[fall_velocity/1]).

term() ->
    Input = io:read("What {planemo,distance} ? >>"),
    process_term(Input).

process_term({ok,Term})  when is_tuple(Term) -> 
    Velocity = fall_velocity(Term),
    io:foramt("Yields ~w. ~n",[Velocity]),
    term();

process_term({ok,quit}) -> 
    io:format("Good bye.~n"); % does not call term again and ends the program

process_term({ok,_}) -> 
    io:format("You must enter a tuple.~n"),
    term();

process_term({error,_}) -> 
    io:format("You must enter a tuple with currect syntax.~n"),
    term().
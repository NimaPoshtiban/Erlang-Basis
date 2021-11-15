-module(drop).
-export([fall_velocity/2]).

fall_velocity(Planemo, Distance)  when Distance >= 0 ->
    Gravity = case Planemo of 
        earth-> 9.8;
        moon -> 1.6;
        mars -> 3.71
    end, % function is not finished yet!
    
    Velocity = math:sqrt(2 * Gravity * Distance),

    if
        Velocity == 0 -> 'stable';
        Velocity < 5 -> 'slow';
        Velocity >= 5 , Velocity < 10 -> 'moving'; % commas here acts like AND oprator
        Velocity > 10, Velocity < 20 -> 'fast';
        Velocity >= 20 -> 'speedy'
    end,

    if
        Velocity >= 40 -> io:format("Look out below!~n"); % ~n means new line (\n)
        true -> true
    end.

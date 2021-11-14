-module(drop).
-export([fall_velocity/2]).

% these are three diffrent definition for a function
% that will be choosen by pattern matching

fall_velocity(earth, Distance) when Distance >=0 -> math:sqrt(2 * 9.8 * Distance);

fall_velocity(moon, Distance) when Distance >=0 -> math:sqrt(2 * 1.6 * Distance);

fall_velocity(mars, Distance) when Distance >=0 -> math:sqrt(2 * 3.71 * Distance).
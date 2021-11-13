-module(drop).
-export([fall_velocity/1,mps_to_mph/1,mph_to_km/1]).

% function names must be lowerCase

fall_velocity(Distance) -> math:sqrt(2*9.8*Distance) .

mps_to_mph(Mps)-> 2.23693629 * Mps.

mph_to_km(Mph)-> 3.6 * Mph.
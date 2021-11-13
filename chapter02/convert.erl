-module(convert).
-export([mps_to_mph/1,mph_to_km/1]).

% use -compile(export_all) . if you need to make all your functions public

mps_to_mph(Mps)-> 2.23693629 * Mps.

mph_to_km(Mph)-> 3.6 * Mph.
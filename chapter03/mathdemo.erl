-module(mathdemo).
-export([absolute_value/1]).



absolute_value(Number) when Number < 0 -> -Number; % using guards

absolute_value(Number) -> Number .
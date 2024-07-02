#!/bin/bash

ghci <<EOF
:l src/chap5/sec4/lambda
map (+3) [1, 6, 3, 2]
map (\x -> x + 3) [1, 6, 3, 2]
zipWith (\a b -> (a * 30 + 3) / b) [5, 4, 3, 2, 1] [1, 2, 3, 4, 5]
map (\(a, b) -> a + b) [(1, 2), (3, 5), (6, 3), (2, 6), (2, 5)]
zipWith (flip (++)) ["love you", "love me"] ["i ", "you "]
map (flip subtract 20) [1, 2, 3, 4]
EOF

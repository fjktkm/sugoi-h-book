#!/bin/bash

ghci <<EOF
:l src/chap5/sec5/fold
:t foldl
sum' [3, 5, 2, 1]
:t foldl
:t foldr
and' (repeat False)
scanl (+) 0 [3, 5, 2, 1]
scanr (+) 0 [3, 5, 2, 1]
scanl1 (\acc x -> if x > acc then x else acc) [3, 4, 5, 3, 7, 9, 2, 1]
scanl (flip (:)) [] [3, 2, 1]
sqrtSums
sum (map sqrt [1 .. 131])
sum (map sqrt [1 .. 130])
EOF

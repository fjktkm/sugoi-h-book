#!/bin/bash

ghci <<EOF
:l src/chap11/sec4/sequenceA
sequenceA [Just 3, Just 2, Just 1]
sequenceA [Just 3, Nothing, Just 1]
sequenceA [(+ 3), (+ 2), (+ 1)] 3
sequenceA [[1, 2, 3], [4, 5, 6]]
sequenceA [[1, 2, 3], [4, 5, 6], [3, 4, 4], []]
map (\f -> f 7) [(> 4), (< 10), odd]
and $ map (\f -> f 7) [(> 4), (< 10), odd]
sequenceA [(> 4), (< 10), odd] 7
and $ sequenceA [(> 4), (< 10), odd] 7
sequenceA [[1, 2, 3], [4, 5, 6]]
[[x, y] | x <- [1, 2, 3], y <- [4, 5, 6]]
sequenceA [[1, 2], [3, 4]]
[[x, y] | x <- [1, 2], y <- [3, 4]]
sequenceA [[1, 2], [3, 4], [5, 6]]
[[x, y, z] | x <- [1, 2], y <- [3, 4], z <- [5, 6]]
sequenceA [getLine, getLine, getLine]
heyh
ho
woo
EOF

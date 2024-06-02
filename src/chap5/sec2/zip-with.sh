#!/bin/bash

ghci <<EOF
:l src/sec5/subsec2/higherOrderFunc
zipWith' (+) [4, 2, 5, 6] [2, 6, 2, 3]
zipWith' max [6, 3, 2, 1] [7, 3, 1, 5]
zipWith' (++) ["foo ", "bar ", "baz "] ["fighters", "hoppers", "aldrin"]
zipWith' (zipWith' (*)) [[1, 2, 3], [3, 5, 6], [2, 3, 4]] [[3, 2, 2], [3, 4, 5], [5, 4, 3]]
EOF

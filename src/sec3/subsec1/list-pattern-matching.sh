#!/bin/bash

cd src/sec3/subsec1
ghci <<EOF
:l listPatternMatching
let xs = [(1, 3), (4, 3), (2, 4), (5, 3), (5, 6), (3, 1)]
[a + b | (a, b) <- xs]
[x * 100 + 3 | (x, 3) <- xs]
head' [4, 5, 6]
head' "Hello"
tell [1]
tell [True, False]
tell [1, 2, 3, 4]
tell []
badAdd [100, 20]
EOF

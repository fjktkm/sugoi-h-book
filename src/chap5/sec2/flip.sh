#!/bin/bash

ghci <<EOF
:l src/chap5/sec2/higherOrderFunc
zip [1, 2, 3, 4, 5] "hello"
flip' zip [1, 2, 3, 4, 5] "hello"
zipWith div [2, 2 ..] [10, 8, 6, 4, 2]
zipWith (flip' div) [2, 2 ..] [10, 8, 6, 4, 2]
EOF

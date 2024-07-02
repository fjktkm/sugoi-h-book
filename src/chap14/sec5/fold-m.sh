#!/bin/bash

ghci <<EOF
:m +Control.Monad
:l src/chap14/sec5/FoldM
foldl (\acc x -> acc + x) 0 [2, 8, 3, 1]
foldM binSmalls 0 [2, 8, 3, 1]
foldM binSmalls 0 [2, 11, 3, 1]
EOF

#!/bin/bash

ghci <<EOF
:l src/chap14/sec3/StateMonad
runState stackManip [5, 8, 2, 1]
runState stackManip [9, 0, 2, 1, 0]
runState moreStack [100, 9, 0, 2, 1, 0]
EOF

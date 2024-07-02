#!/bin/bash

ghci <<EOF
:l src/chap14/sec3/RandomState
runState threeCoins (mkStdGen 33)
EOF

#!/bin/bash

ghci <<EOF
:l src/chap14/sec3/ThreeCoins
threeCoins (mkStdGen 21)
EOF

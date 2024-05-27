#!/bin/bash

ghci <<EOF
:l src/sec9/subsec6/threeCoins.hs
threeCoins (mkStdGen 21)
threeCoins (mkStdGen 22)
threeCoins (mkStdGen 943)
threeCoins (mkStdGen 944)
EOF

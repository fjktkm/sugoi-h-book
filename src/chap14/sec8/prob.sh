#!/bin/bash

ghci <<EOF
:l src/chap14/sec8/Prob
fmap negate (Prob [(3, 1 % 2), (5, 1 % 4), (9, 1 % 4)])
getProb flipThree
EOF

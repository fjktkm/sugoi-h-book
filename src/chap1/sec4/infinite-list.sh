#!/bin/bash

ghci <<EOF
[13, 26 .. 24 * 13]
take 24 [13, 26 ..]
take 10 (cycle [1, 2, 3])
take 12 (cycle "LOL ")
take 10 (repeat 5)
replicate 3 10
[0.1, 0.3 .. 1]
EOF

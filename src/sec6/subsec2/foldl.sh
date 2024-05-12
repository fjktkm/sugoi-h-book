#!/bin/bash

ghci <<EOF
:m + Data.List
foldl (+) 0 (replicate 100 1)
foldl (+) 0 (replicate 1000000 1)
foldl' (+) 0 (replicate 1000000 1)
EOF

# スタックオーバーフローが発生するはずだが，発生しない

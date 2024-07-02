#!/bin/bash

ghci <<EOF
:l src/chap14/sec6/RPN
readMaybe "1" :: Maybe Int
readMaybe "GOTO HELL" :: Maybe Int
foldingFunction [3, 2] "*"
foldingFunction [3, 2] "-"
foldingFunction [] "*"
foldingFunction [] "1"
foldingFunction [] "1 wawawawa"
solveRPN "1 2 * 4 +"
solveRPN "1 2 * 4 + 5 *"
solveRPN "1 2 * 4"
solveRPN "1 8 wharglbllargh"
EOF

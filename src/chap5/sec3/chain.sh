#!/bin/bash

ghci <<EOF
:l src/chap5/sec3/mapAndFilter
chain 10
chain 1
chain 30
numLongChains
let listOfFuns = map (*) [0 ..]
(listOfFuns !! 4) 5
EOF

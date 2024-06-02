#!/bin/bash

ghci <<EOF
:l src/sec5/subsec3/mapAndFilter
chain 10
chain 1
chain 30
numLongChains
let listOfFuns = map (*) [0 ..]
(listOfFuns !! 4) 5
EOF

#!/bin/bash

ghci <<EOF
:l src/sec5/subsec2/higherOrderFunc
applyTwice (+3) 10
applyTwice ("HAHA " ++) "HEY"
applyTwice (multThree 2 2) 9
applyTwice (3:) [1]
EOF

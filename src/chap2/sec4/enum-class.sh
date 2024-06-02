#!/bin/bash

ghci <<EOF
['a' .. 'e']
[LT .. GT]
[3 .. 5]
succ 'B'
EOF

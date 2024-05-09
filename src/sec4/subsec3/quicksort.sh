#!/bin/bash

ghci <<EOF
:l src/sec4/subsec3/quicksort
quicksort [10, 2, 5, 3, 1, 6, 7, 4, 2, 3, 4, 8, 9]
quicksort "the quick brown fox jumps over the lazy dog"
EOF

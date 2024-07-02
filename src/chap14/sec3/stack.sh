#!/bin/bash

ghci <<EOF
:l src/chap14/sec3/Stack
stackManip [5, 8, 2, 1]
EOF

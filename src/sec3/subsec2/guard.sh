#!/bin/bash

cd src/sec3/subsec2
ghci <<EOF
:l guard
bmiTell 85 1.90
EOF

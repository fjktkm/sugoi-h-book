#!/bin/bash

ghci <<EOF
:l src/chap1/sec5/boomBangs
boomBangs [7 .. 13]
EOF

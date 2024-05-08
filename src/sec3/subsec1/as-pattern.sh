#!/bin/bash

cd src/sec3/subsec1
ghci <<EOF
:l asPattern
firstLetter "Dracula"
EOF

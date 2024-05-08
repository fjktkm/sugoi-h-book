#!/bin/bash

cd src/sec3/subsec1
ghci <<EOF
:l patternMatching
charName 'a'
charName 'b'
charName 'h'
EOF

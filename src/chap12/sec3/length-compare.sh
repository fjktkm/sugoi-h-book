#!/bin/bash

ghci <<EOF
:l src/chap12/sec2/LengthCompare
lengthCompare "zen" "ants"
lengthCompare "zen" "ant"
lengthCompare' "zen" "ants"
lengthCompare' "zen" "ant"
lengthCompare'' "zen" "anna"
lengthCompare'' "zen" "ana"
lengthCompare'' "zen" "ann"
EOF

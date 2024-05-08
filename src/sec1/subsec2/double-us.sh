#!/bin/bash

cd src/sec1/subsec2/
ghci <<EOF
:l baby
doubleUs 4 9
doubleUs 2.3 34.2
doubleUs 28 88 + doubleMe 123
EOF

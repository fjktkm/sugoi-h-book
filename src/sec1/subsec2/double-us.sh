#!/bin/bash

ghci <<EOF
:l src/sec1/subsec2/baby
doubleUs 4 9
doubleUs 2.3 34.2
doubleUs 28 88 + doubleMe 123
EOF

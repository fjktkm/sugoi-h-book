#!/bin/bash

cd src/sec1/subsec2/
ghci <<EOF
:l baby
doubleMe 9
doubleMe 8.3
EOF

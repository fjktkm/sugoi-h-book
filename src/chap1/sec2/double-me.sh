#!/bin/bash

ghci <<EOF
:l src/chap1/sec2/baby
doubleMe 9
doubleMe 8.3
EOF

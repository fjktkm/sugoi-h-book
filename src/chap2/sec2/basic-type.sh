#!/bin/bash

ghci <<EOF
:l src/chap2/sec2/basicType
factorial 50
circumference 4.0
circumference' 4.0
EOF

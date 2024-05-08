#!/bin/bash

cd src/sec2/subsec2
ghci <<EOF
:l basicType
factorial 50
circumference 4.0
circumference' 4.0
EOF

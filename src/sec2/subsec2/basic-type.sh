#!/bin/bash

ghci <<EOF
:l src/sec2/subsec2/basicType
factorial 50
circumference 4.0
circumference' 4.0
EOF

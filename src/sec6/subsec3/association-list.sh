#!/bin/bash

ghci <<EOF
:l src/sec6/subsec3/associationList
findKey "penny" phoneBook
findKey "betty" phoneBook
findKey "wilma" phoneBook
EOF

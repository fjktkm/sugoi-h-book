#!/bin/bash

ghci <<EOF
:l src/sec6/subsec3/assocList
findKey "penny" phoneBook
findKey "betty" phoneBook
findKey "wilma" phoneBook
EOF

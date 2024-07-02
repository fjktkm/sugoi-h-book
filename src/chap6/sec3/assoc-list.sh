#!/bin/bash

ghci <<EOF
:l src/chap6/sec3/assocList
findKey "penny" phoneBook
findKey "betty" phoneBook
findKey "wilma" phoneBook
EOF

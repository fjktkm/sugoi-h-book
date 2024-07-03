#!/bin/bash

ghci <<EOF
:l src/chap15/sec1/Direction
let newTree = changeToP [R, L] freeTree
elemAt [R, L] newTree
EOF

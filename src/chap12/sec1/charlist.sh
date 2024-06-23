#!/bin/bash

ghci <<EOF
:l src/chap12/sec1/CharList
CharList "this will be shown!"
CharList "benny" == CharList "benny"
CharList "benny" == CharList "oisters"
EOF

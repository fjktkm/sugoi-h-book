#!/bin/bash

ghci <<EOF
:l src/chap12/sec1/CoolBool
head [3, 4, 5, undefined, 2, undefined]
helloMe undefined
helloMe' undefined
EOF

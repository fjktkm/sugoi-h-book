#!/bin/bash

ghci <<EOF
5 == 5
1 == 0
5 /= 5
5 /= 4
"hello" == "hello"
EOF

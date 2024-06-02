#!/bin/bash

ghci <<EOF
[x * 2 | x <- [1 .. 10]]
[x * 2 | x <- [1 .. 10], x * 2 >= 12]
[x | x <- [50 .. 100], x \`mod\` 7 == 3]
EOF

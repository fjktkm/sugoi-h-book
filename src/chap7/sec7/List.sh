#!/bin/bash

ghci <<EOF
:l src/chap7/sec7/List.hs
Empty
5 \`Cons\` Empty
4 \`Cons\` (5 \`Cons\` Empty)
3 \`Cons\` (4 \`Cons\` (5 \`Cons\` Empty))
EOF

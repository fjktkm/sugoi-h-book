#!/bin/bash

ghci <<EOF
:l src/chap7/sec4/Vector
Vector 3 5 8 \`vplus\` Vector 9 2 8
Vector 3 5 8 \`vplus\` Vector 9 2 8 \`vplus\` Vector 0 2 3
Vector 3 9 7 \`vmult\` 10
Vector 4 9 5 \`dotProd\` Vector 9.0 2.0 4.0
Vector 2 9 3 \`vmult\` (Vector 4 9 5 \`dotProd\` Vector 9 2 4)
EOF

#!/bin/bash

ghci <<EOF
:m +Data.Ratio
1 % 4
1 % 2 + 1 % 2
1 % 3 + 5 % 4
[(3, 1 % 2), (5, 1 % 4), (9, 1 % 4)]
EOF

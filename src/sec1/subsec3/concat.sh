#!/bin/bash

ghci <<EOF
[1, 2, 3, 4] ++ [9, 10, 11, 12]
"hello" ++ " " ++ "world"
['w', 'o'] ++ ['o', 't']
'A' : " SMALL CAT"
5 : [1, 2, 3, 4, 5]
[1, 2, 3, 4] ++ [5]
EOF

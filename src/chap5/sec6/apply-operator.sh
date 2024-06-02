#!/bin/bash

ghci <<EOF
sum (filter (> 10) (map (*2) [2 .. 10]))
sum $ filter (> 10) (map (*2) [2 .. 10])
sum $ filter (> 10) $ map (*2) [2 .. 10]
map ($ 3) [(4 +), (10 *), (^ 2), sqrt]
EOF

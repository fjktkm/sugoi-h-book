#!/bin/bash

ghci <<EOF
:l src/sec1/subsec5/funcWithListComprehension
let xxs = [[1, 3, 5, 2, 3, 1, 2, 4, 5], [1, 2, 3, 4, 5, 6, 7, 8, 9], [1, 2, 4, 2, 1, 6, 3, 1, 3, 2, 3, 6]]
[[x | x <- xs, even x] | xs <- xxs]
EOF

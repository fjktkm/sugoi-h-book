#!/bin/bash

ghci <<EOF
:l src/chap15/sec2/ListZipper
let xs = [1, 2, 3, 4]
goForward (xs, [])
goForward ([2, 3, 4], [1])
goBack ([4], [3, 2, 1])
EOF

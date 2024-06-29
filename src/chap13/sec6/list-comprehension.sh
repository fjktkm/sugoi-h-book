#!/bin/bash

ghci <<EOF
[(n, ch) | n <- [1, 2], ch <- ['a', 'b']]
EOF

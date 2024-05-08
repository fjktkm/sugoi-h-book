#!/bin/bash

ghci <<EOF
succ 9 + max 5 4 + 1
(succ 9) + (max 5 4) + 1
succ 9 * 10
succ (9 * 10)
EOF

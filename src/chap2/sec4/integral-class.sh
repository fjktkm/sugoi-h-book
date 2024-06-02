#!/bin/bash

ghci <<EOF
fromIntegral (length [1,2,3,4]) + 3.2
EOF

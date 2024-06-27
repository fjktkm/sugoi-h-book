#!/bin/bash

ghci <<EOF
Just 9 >>= (\x -> Just (x > 8))
EOF

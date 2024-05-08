#!/bin/bash

ghci <<EOF
minBound :: Int
maxBound :: Char
maxBound :: Bool
minBound :: Bool
maxBound :: (Bool, Int, Char)
EOF

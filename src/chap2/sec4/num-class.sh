#!/bin/bash

ghci <<EOF
20 :: Int
20 :: Integer
20 :: Float
20 :: Double
:t (*)
EOF

#!/bin/bash

ghci <<EOF
Just 3 :: Maybe Int
Just "Haha"
Just 84
:t Just "Haha"
:t Just 84
:t Nothing
Just 10 :: Maybe Double
EOF

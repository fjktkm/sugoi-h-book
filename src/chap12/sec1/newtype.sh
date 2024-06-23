#!/bin/bash

ghci <<EOF
:m +Control.Applicative
[(+1), (* 100), (* 5)] <*> [1, 2, 3]
getZipList $ ZipList [(+ 1), (* 100), (* 5)] <*> ZipList [1, 2, 3]
EOF

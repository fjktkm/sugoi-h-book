#!/bin/bash

ghci <<EOF
read "True" || False
read "8.2" + 3.8
read "5" - 2
read "[1, 2, 3, 4]" ++ [3]
read "4"
read "5" :: Int
read "5" :: Float
read (read "5" :: Float) * 4
read "[1, 2, 3, 4]" :: [Int]
read "(3, 'a')" :: (Int, Char)
EOF

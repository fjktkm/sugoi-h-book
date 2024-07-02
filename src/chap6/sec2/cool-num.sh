#!/bin/bash

ghci <<EOF
:l src/chap6/sec2/coolNum
:m + Data.Char Data.List
digitToInt '2'
digitToInt 'F'
digitToInt 'z'
:t find
Nothing
Just "hey"
Just 3
:t Just "hey"
:t Just True
find (> 4) [3, 4, 5, 6, 7]
find odd [2, 4, 6, 8, 9]
find (== 'z') "mjolnir"
firstTo 27
firstTo 1
firstTo 13
EOF

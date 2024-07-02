#!/bin/bash

ghci <<EOF
:l src/chap6/sec2/stdModule
:m + Data.List Data.Map Data.Set
words "hey these are the words in this sentence"
words "hey these           are    the words in this sentence"
group [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 2, 2, 2, 5, 6, 7]
group ["boom", "bip", "bip", "boom", "boom"]
sort [5, 4, 3, 7, 2, 1]
sort ["boom", "bip", "bip", "boom", "boom"]
wordNums "boom bip bip boom boom"
EOF

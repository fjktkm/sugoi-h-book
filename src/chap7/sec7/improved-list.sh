#!/bin/bash

ghci <<EOF
:l src/chap7/sec7/ImprovedList.hs
3 :-:4 :-: 5 :-: Empty
let a = 3 :-: 4 :-: 5 :-: Empty
100 :-: a
let a = 3 :-: 4 :-: 5 :-: Empty
let b = 6 :-: 7 :-: Empty
a ^++ b
EOF

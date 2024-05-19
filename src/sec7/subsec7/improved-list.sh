#!/bin/bash

ghci <<EOF
:l src/sec7/subsec7/ImprovedList.hs
3 :-:4 :-: 5 :-: Empty
let a = 3 :-: 4 :-: 5 :-: Empty
100 :-: a
let a = 3 :-: 4 :-: 5 :-: Empty
let b = 6 :-: 7 :-: Empty
a ^++ b
EOF

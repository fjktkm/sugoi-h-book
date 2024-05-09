#!/bin/bash

cd src/sec5/subsec1
ghci <<EOF
:l currying
max 4 5
(max 4) 5
:t max
let multTwoWithNine = multThree 9
multTwoWithNine 2 3
compareWithHundred 99
divideByTen 200
200 / 10
(/10) 200
multThree 3 4
EOF
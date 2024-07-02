#!/bin/bash

ghci <<EOF
:l src/chap5/sec1/currying
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

#!/bin/bash

ghci <<EOF
max 4 5
(max 4) 5
:t max
let multTwoWithNine = multThree 9
multTwoWithNine 2 3
compareWithHundred 99
EOF

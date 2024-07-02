#!/bin/bash

ghci <<EOF
:l src/chap10/sec1/solveRPN
solveRPN "10 4 3 + 2 * -"
solveRPN "2 3.5 +"
solveRPN "90 34 12 33 55 66 + * - +"
solveRPN "90 34 12 33 55 66 + * - + -"
solveRPN "90 3.8 +"
solveRPN "2.7 ln"
solveRPN "10 10 10 10 sum 4 /"
solveRPN "10 10 10 10 10 sum 4 /"
solveRPN "10 2 ^"
EOF

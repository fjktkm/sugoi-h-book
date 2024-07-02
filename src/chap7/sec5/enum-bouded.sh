#!/bin/bash

ghci <<EOF
:l src/chap7/sec5/Day
Wednesday
show Wednesday
read "Saturday" :: Day
Saturday == Sunday
Saturday == Saturday
Saturday > Friday
Monday \`compare\` Wednesday
minBound :: Day
maxBound :: Day
succ Monday
pred Saturday
[Thursday .. Sunday]
[minBound .. maxBound] :: [Day]
EOF

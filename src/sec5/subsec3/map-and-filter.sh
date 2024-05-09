#!/bin/bash

ghci <<EOF
:l src/sec5/subsec3/mapAndFilter
takeWhile (/=' ') "elephants know how to party"
sum (takeWhile (< 10000) (filter odd (map (^2) [1 ..])))
sum (takeWhile (< 10000) [m | m <- [n ^ 2 | n <- [1 ..]], odd m ])
EOF

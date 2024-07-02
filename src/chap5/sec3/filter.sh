#!/bin/bash

ghci <<EOF
:l src/chap5/sec3/mapAndFilter
filter (> 3) [1, 5, 3, 2, 1, 6, 4, 3, 2, 1]
filter (== 3) [1, 2, 3, 4, 5]
filter even [1 .. 10]
let notNull x = not (null x) in filter notNull [[1, 2, 3], [], [3, 4, 5], [2, 2], [], [], []]
filter (\`elem\` ['a' .. 'z']) "u LaUgH aT mE BeCaUsE I aM diFfeRent"
filter (\`elem\` ['A' .. 'Z']) "i LAuGh at you bEcause u R all the same"
filter (< 15) (filter even [1 .. 20]
[ x | x <- [1 .. 20], x < 15, even x]
EOF

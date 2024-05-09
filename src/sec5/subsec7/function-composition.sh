#!/bin/bash

ghci <<EOF
:l src/sec5/subsec7/functionComposition
map (\x -> negate (abs x)) [5, -3, -6, 7, -3, 2, -19, 24]
map (negate . abs) [5, -3, -6, 7, -3, 2, -19, 24]
map (\xs -> negate (sum (tail xs))) [[1 .. 5], [3 .. 6], [1 .. 7]]
sum (replicate 5 (max 6.7 8.9))
(sum . replicate 5) (max 6.7 8.9)
sum . replicate 5 $ max 6.7 8.9
replicate 2 (product (map (*3) (zipWith max [1, 2] [4, 5])))
replicate 2 . product . map (*3) $ zipWith max [1, 2] [4, 5]
zipWith max [1, 2] [4, 5]
product . map (*3) $ zipWith max [1, 2] [4, 5]
replicate 2 . product . map (*3) $ zipWith max [1, 2] [4, 5]
oddSquareSum
EOF

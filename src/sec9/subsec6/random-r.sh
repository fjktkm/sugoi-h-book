#!/bin/bash

ghci <<EOF
:m +System.Random
randomR (1, 6) (mkStdGen 359353)
randomR (1, 6) (mkStdGen 35935335)
take 10 $ randomRs ('a', 'z') (mkStdGen 35935335) :: [Char]
EOF

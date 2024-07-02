#!/bin/bash

ghci <<EOF
:l src/chap14/sec1/Gcd
gcd' 8 3
fst $ runWriter (gcd'' 8 3)
mapM_ putStrLn $ snd $ runWriter (gcd'' 8 3)
mapM_ putStrLn $ snd $ runWriter (gcdReverse 8 3)
EOF

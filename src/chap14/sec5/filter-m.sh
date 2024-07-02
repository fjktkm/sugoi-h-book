#!/bin/bash

ghci <<EOF
:m +Control.Monad Control.Monad.Writer
:l src/chap14/sec5/FilterM
filter (\x -> x < 4) [9, 1, 5, 2, 10, 3]
fst $ runWriter $ filterM keepSmall [9, 1, 5, 2, 10, 3]
mapM_ putStrLn $ snd $ runWriter $ filterM keepSmall [9, 1, 5, 2, 10, 3]
powerset [1, 2, 3]
EOF

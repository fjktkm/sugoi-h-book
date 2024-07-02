#!/bin/bash

ghci <<EOF
:l src/chap14/sec1/DiffList
fromDiffList (toDiffList [1, 2, 3, 4] \`mappend\` toDiffList [1, 2, 3])
mapM_ putStrLn . fromDiffList . snd . runWriter $ gcdReverse 110 34
mapM_ putStrLn . fromDiffList . snd . runWriter $ finalCountDown 500000
mapM_ putStrLn . snd . runWriter $ finalCountDown' 500000
EOF

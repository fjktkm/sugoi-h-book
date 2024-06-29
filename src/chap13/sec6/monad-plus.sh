#!/bin/bash

ghci <<EOF
:m +Control.Monad
[x | x <- [1 .. 50], '7' \`elem\` show x]
guard (5 > 2) :: Maybe ()
guard (1 > 2) :: Maybe ()
guard (5 > 2) :: [()]
guard (1 > 2) :: [()]
[1 .. 50] >>= (\x -> guard ('7' \`elem\` show x) >> return x)
guard (5 > 2) >> return "cool" :: [String]
guard (1 > 2) >> return "cool" :: [String]
[x | x <- [1 .. 50], '7' \`elem\` show x]
EOF

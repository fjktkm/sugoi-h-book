#!/bin/bash

ghci <<EOF
:m +Data.Monoid Data.Foldable
:l src/chap12/sec4/Tree
:t foldr
:t F.foldr
foldr (+) 1 [1, 2, 3]
F.foldr (+) 1 [1, 2, 3]
F.foldl (+) 2 (Just 9)
F.foldr (||) False (Just True)
F.foldl (+) 0 testTree
F.foldl (*) 1 testTree
getAny $ F.foldMap (\x -> Any $ x == 3) testTree
getAny $ F.foldMap (\x -> Any $ x > 15) testTree
F.foldMap (\x -> [x]) testTree
EOF

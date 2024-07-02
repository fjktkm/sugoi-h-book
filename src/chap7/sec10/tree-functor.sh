#!/bin/bash

ghci <<EOF
:l src/chap7/sec10/TreeFunctor.hs
fmap (* 2) EmptyTree
fmap (* 4) (foldr treeInsert EmptyTree [5, 7, 3])
EOF

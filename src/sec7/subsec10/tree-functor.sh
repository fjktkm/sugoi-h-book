#!/bin/bash

ghci <<EOF
:l src/sec7/subsec10/TreeFunctor.hs
fmap (* 2) EmptyTree
fmap (* 4) (foldr treeInsert EmptyTree [5, 7, 3])
EOF

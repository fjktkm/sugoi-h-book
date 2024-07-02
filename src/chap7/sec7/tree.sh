#!/bin/bash

ghci <<EOF
:l src/chap7/sec7/Tree.hs
let nums = [8, 6, 4, 1, 7, 3, 5]
let numsTree = foldr treeInsert EmptyTree nums
numsTree
8 \`treeElem\` numsTree
100 \`treeElem\` numsTree
1 \`treeElem\` numsTree
10 \`treeElem\` numsTree
EOF

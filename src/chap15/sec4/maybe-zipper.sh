#!/bin/bash

ghci <<EOF
:l src/chap15/sec4/MaybeZipper
goLeft (Empty, [])
goLeft (Node 'A' Empty Empty, [])
let newFocus = (freeTree, []) -: goLeft -: goRight
let coolTree = Node 1 Empty (Node 3 Empty Empty)
return (coolTree, []) >>= goRight
return (coolTree, []) >>= goRight >>= goRight
return (coolTree, []) >>= goRight >>= goRight >>= goRight
EOF

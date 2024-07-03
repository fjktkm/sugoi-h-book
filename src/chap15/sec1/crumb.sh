#!/bin/bash

ghci <<EOF
:l src/chap15/sec1/Crumb
let newFocus = modify (\_ -> 'P') (goRight (goLeft (freeTree, [])))
let newFocus = (freeTree, []) -: goLeft -: goRight -:modify (\_ -> 'P')
newFocus
let newFocus2 = modify (\_ -> 'X') (goUp newFocus)
let newFocus2 = newFocus -: goUp -: modify (\_ -> 'X')
newFocus2
let farLeft = (freeTree, []) -: goLeft -: goLeft -: goLeft -: goLeft
let newFocus = farLeft -: attach (Node 'Z' Empty Empty)
let newFocus2 = newFocus -: topMost
newFocus2
EOF

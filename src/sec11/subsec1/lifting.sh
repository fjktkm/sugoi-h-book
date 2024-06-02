#!/bin/bash

ghci <<EOF
:t fmap (* 2)
:t fmap (replicate 3)
:set -XNoMonomorphismRestriction
let shout = fmap (++ "!")
:t fmap shout
shout ["ha", "ka", "ta", "no"]
fmap (replicate 3) [1, 2, 3, 4]
fmap (replicate 3) (Just 4)
fmap (replicate 3) (Right "blah")
fmap (replicate 3) Nothing
fmap (replicate 3) (Left "foo")
EOF

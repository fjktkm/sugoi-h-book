#!/bin/bash

ghci <<EOF
:t fmap (++) (Just "hey")
:t fmap compare (Just 'a')
:t fmap compare "A LIST OF CHARS"
:t fmap (\x y z -> x + y / z) [3, 4, 5, 6]
let a = fmap (*) [1, 2, 3, 4]
:t a
fmap (\f -> f 9) a
fmap ($ 9) a
EOF

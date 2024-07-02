#!/bin/bash

ghci <<EOF
:l src/chap14/sec2/Reader
let f = (* 5)
let g = (+ 3)
(fmap f g ) 8
let f = (+) <$> (* 2) <*> (+ 10)
f 3
addStuff 3
addStuff' 3
EOF

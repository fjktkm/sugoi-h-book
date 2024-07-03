#!/bin/bash

ghci <<EOF
:m +Control.Monad
let f = (+ 1) . (* 100)
f 4
let g = (\x -> return (x + 1)) <=< (\x -> return (x * 100))
Just 4 >>= g
let f = foldr (.) id [(+ 8), (* 100), (+ 1)]
f 1
EOF

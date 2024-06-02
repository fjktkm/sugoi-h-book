#!/bin/bash

ghci <<EOF
:t fmap (* 3) (+ 100)
fmap (* 3) (+ 100) 1
(* 3) \`fmap\` (+ 100) $ 1
(* 3) . (+ 100) $ 1
fmap (show . (*3)) (+ 100) 1
EOF

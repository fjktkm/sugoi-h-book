#!/bin/bash

ghci <<EOF
(pure 3) "blah"
pure 3 "blah"
:t (+) <$> (+ 3) <*> (* 100)
(+) <$> (+ 3) <*> (* 100) $ 5
(\x y z -> [x, y, z]) <$> (+ 3) <*> (* 2) <*> (/ 2) $ 5
EOF

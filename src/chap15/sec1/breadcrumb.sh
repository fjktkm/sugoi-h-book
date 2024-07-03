#!/bin/bash

ghci <<EOF
:l src/chap15/sec1/Breadcrums
goLeft (goRight (freeTree, []))
(freeTree, []) -: goRight -: goLeft
EOF

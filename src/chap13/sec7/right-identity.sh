#!/bin/bash

ghci <<EOF
Just "move on up" >>= return
[1, 2, 3, 4] >>= return
putStrLn "Wah!" >>= return
EOF

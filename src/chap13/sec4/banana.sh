#!/bin/bash

ghci <<EOF
:l src/chap13/sec4/Banana
return (0, 0) >>= landLeft 1 >>= banana >>= landRight 1
Nothing >> Just 3
Just 3 >> Just 4
Just 3 >> Nothing
return (0, 0) >>= landLeft 1 >> Nothing >>= landRight 1
EOF

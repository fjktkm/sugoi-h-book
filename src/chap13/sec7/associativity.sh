#!/bin/bash

ghci <<EOF
:m +Control.Monad
:l src/chap13/sec4/Banana
return (0, 0) >>= landRight 2 >>= landLeft 2 >>= landRight 2
((return (0,0) >>= landRight 2) >>= landLeft 2) >>= landRight 2
let f x = [x, -x]
let g x = [x * 3, x * 2]
let h = f <=< g
h 3
EOF

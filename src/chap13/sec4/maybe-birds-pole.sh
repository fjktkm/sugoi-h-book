#!/bin/bash

ghci <<EOF
:l src/chap13/sec4/MaybeBirdsPole
landLeft 2 (0, 0)
landLeft 10 (0, 3)
landRight 1 (0, 0) >>= landLeft 2
Nothing >>= landLeft 2
return (0, 0) >>= landRight 2 >>= landLeft 2 >>= landRight 2
return (0, 0) >>= landLeft 1 >>= landRight 4 >>= landLeft (-1) >>= landRight (-2)
EOF

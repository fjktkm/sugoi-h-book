#!/bin/bash

ghci <<EOF
return 3 >>= (\x -> Just (x + 100000))
(\x -> Just (x + 100000)) 3
return "WoM" >>= (\x -> [x, x, x])
(\x -> [x, x, x]) "WoM"
EOF

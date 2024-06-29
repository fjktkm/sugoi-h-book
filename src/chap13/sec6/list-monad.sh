#!/bin/bash

ghci <<EOF
[3, 4, 5] >>= \x -> [x, -x]
[] >>= \x -> ["bad", "mad", "rad"]
[1, 2, 3] >>= \x -> []
[1, 2] >>= \n -> ['a', 'b'] >>= \ch -> return (n, ch)
EOF

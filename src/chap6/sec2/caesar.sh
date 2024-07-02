#!/bin/bash

ghci <<EOF
:l src/chap6/sec2/caesar
ord 'a'
chr 97
map ord "abcdefgh"
encode 3 "hey mark"
encode 5 "please instruct your men"
encode 1 "to party hard"
decode 3 "kh|#pdun"
decode 5 "uqjfxj%nsxywzhy%~tzw%rjs"
decode 1 "up!qbsuz!ibse"
EOF

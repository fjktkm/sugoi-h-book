#!/bin/bash

ghci <<EOF
:l src/chap14/sec1/BigGang
isBigGang 3
isBigGang 30
isBigGang' 3
isBigGang' 30
(3, "Smallish gang.") \`applyLog\` isBigGang'
(30, "A freaking platoon.") \`applyLog\` isBigGang'
("Tobin", "Got outlaw name.") \`applyLog\` (\x -> (length x, "Applied length."))
("Bathcat", "Got outlaw name.") \`applyLog\` (\x -> (length x, "Applied length."))
EOF

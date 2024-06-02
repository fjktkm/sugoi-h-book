#!/bin/bash

ghci <<EOF
:l src/sec6/subsec2/haystackNeedle
:m + Data.List Data.Map Data.Set
tails "party"
tails [1, 2, 3]
"hawaii" \`isPrefixOf\` "hawaii joe"
"haha" \`isPrefixOf\` "ha"
"ha" \`isPrefixOf\` "ha"
any (> 4) [1, 2, 3]
any (== 'F') "Frank Sobotka"
any (\x -> x > 5 && x < 10) [1, 4, 11]
"art" \`isInfixOf\` "party"
[1, 2] \`isInfixOf\` [1, 3, 5]
EOF

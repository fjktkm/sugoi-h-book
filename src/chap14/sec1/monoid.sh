#!/bin/bash

ghci <<EOF
:l src/chap14/sec1/Monoid
[1, 2, 3] \`mappend\` [4, 5, 6]
import qualified Data.ByteString.Lazy as B
B.pack [99, 104, 105] \`mappend\` B.pack [104, 117, 97, 104, 117, 97]
Sum 3 \`mappend\` Sum 9
("beans", Sum 10) \`applyLog'\` addDrink
("jerky", Sum 25) \`applyLog'\` addDrink
("dogmeat", Sum 5) \`applyLog'\` addDrink
("dogmeat", Sum 5) \`applyLog'\` addDrink \`applyLog'\` addDrink
EOF

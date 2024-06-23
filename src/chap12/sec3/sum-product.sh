#!/bin/bash

ghci <<EOF
:m +Data.Monoid
0 + 4
5 + 0
(1 + 3) + 5
1 + (3 + 5)
getProduct $ Product 3 \`mappend\` Product 9
getProduct $ Product 3 \`mappend\` mempty
getProduct $ Product 3 \`mappend\` Product 4 \`mappend\` Product 2
getProduct . mconcat . map Product $ [3, 4, 2]
getSum $ Sum 2 \`mappend\` Sum 9
getSum $ mempty \`mappend\` Sum 3
getSum . mconcat . map Sum $ [1, 2, 3]
EOF

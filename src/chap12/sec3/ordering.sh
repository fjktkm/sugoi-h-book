#!/bin/bash

ghci <<EOF
:m +Data.Monoid
1 \`compare\` 2
2 \`compare\` 2
3 \`compare\` 2
LT \`mappend\` GT
GT \`mappend\` LT
mempty \`mappend\` LT
mempty \`mappend\` GT
EOF

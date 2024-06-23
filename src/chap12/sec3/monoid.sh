#!/bin/bash

ghci <<EOF
[1, 2, 3] \`mappend\` [4, 5, 6]
("one" \`mappend\` "two") \`mappend\` "tree"
"one" \`mappend\` ("two" \`mappend\` "tree")
"one" \`mappend\` "two" \`mappend\` "tree"
"pang" \`mappend\` mempty
mconcat [[1, 2], [3, 6], [9]]
mempty :: [a]
"one" \`mappend\` "two"
"two" \`mappend\` "one"
EOF

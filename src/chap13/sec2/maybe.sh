#!/bin/bash

ghci <<EOF
:l src/chap13/sec2/Maybe
Just 3 \`applyMaybe\` \x -> Just (x + 1)
Just "smile" \`applyMaybe\` \x -> Just (x ++ " :)")
Nothing \`applyMaybe\` \x -> Just (x + 1)
Nothing \`applyMaybe\` \x -> Just (x ++ " :)")
Just 3 \`applyMaybe\` \x -> if x > 2 then Just x else Nothing
Just 1 \`applyMaybe\` \x -> if x > 2 then Just x else Nothing
EOF

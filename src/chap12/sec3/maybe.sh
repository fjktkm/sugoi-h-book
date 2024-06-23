#!/bin/bash

ghci <<EOF
:m +Data.Monoid
Nothing \`mappend\` Just "andy"
Just LT \`mappend\` Nothing
Just (Sum 3) \`mappend\` Just (Sum 4)
getFirst $ First (Just 'a') \`mappend\` First (Just 'b')
getFirst $ First Nothing \`mappend\` First (Just 'b')
getFirst $ First (Just 'a') \`mappend\` First Nothing
getFirst . mconcat . map First $ [Nothing, Just 9, Just 10]
getLast . mconcat . map Last $ [Nothing, Just 9, Just 10]
getLast $ Last (Just "one") \`mappend\` Last (Just "two")
EOF

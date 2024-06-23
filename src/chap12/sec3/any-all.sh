#!/bin/bash

ghci <<EOF
:m +Data.Monoid
getAny $ Any True \`mappend\` Any False
getAny $ mempty \`mappend\` Any True
getAny . mconcat . map Any $ [False, False, False, True]
getAny $ mempty \`mappend\` mempty
getAll $ mempty \`mappend\` All True
getAll $ mempty \`mappend\` All False
getAll . mconcat . map All $ [True, True, True]
getAll . mconcat . map All $ [True, True, False]
EOF

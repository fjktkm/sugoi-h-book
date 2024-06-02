#!/bin/bash

ghci <<EOF
fmap id (Just 3)
id (Just 3)
fmap id [1 .. 5]
id [1 .. 5]
fmap id []
fmap id Nothing
EOF

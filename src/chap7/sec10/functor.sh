#!/bin/bash

ghci <<EOF
fmap (* 2) [1 .. 3]
map (* 2) [1 .. 3]
fmap (++ " HEY GUYS IM INSIDE THE JUST") (Just "Something serious.")
fmap (++ " HEY GUYS IM INSIDE THE JUST") Nothing
fmap (* 2) (Just 200)
fmap (* 2) Nothing
EOF

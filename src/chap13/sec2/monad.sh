#!/bin/bash

ghci <<EOF
:m +Data.Char
fmap (++ "!") (Just "wisdom")
fmap (++ "!") Nothing
Just (+ 3) <*> Just 3
Nothing <*> Just "greed"
Just ord <*> Nothing
max <$> Just 3 <*> Just 6
max <$> Just 3 <*> Nothing
(\x -> Just (x + 1)) 1
(\x -> Just (x + 1)) 100
EOF

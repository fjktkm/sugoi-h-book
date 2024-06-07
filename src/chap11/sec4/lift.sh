#!/bin/bash

ghci <<EOF
fmap (\x -> [x]) (Just 4)
liftA2 (:) (Just 3) (Just [4])
(:) <$> Just 3 <*> Just [4]
EOF

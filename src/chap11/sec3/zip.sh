#!/bin/bash

ghci <<EOF
:m Control.Applicative
getZipList $ (+) <$> ZipList [1, 2, 3] <*> ZipList [100, 100, 100]
getZipList $ (+) <$> ZipList [1, 2, 3] <*> ZipList [100, 100 ..]
getZipList $ max <$> ZipList [1, 2, 3, 4, 5, 3] <*> ZipList [5, 3, 1, 2]
getZipList $ (,,) <$> ZipList "dog" <*> ZipList "cat" <*> ZipList "rat"
EOF

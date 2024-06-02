#!/bin/bash

ghci <<EOF
:l src/sec6/subsec3/fromListWith
Map.lookup "patsy" $ phoneBookToMap phoneBook
Map.lookup "wendy" $ phoneBookToMap phoneBook
Map.lookup "betty" $ phoneBookToMap phoneBook
Map.lookup "patsy" $ phoneBookToMap' phoneBook
Map.fromListWith max [(2, 3), (2, 5), (2, 100), (3, 29), (3, 22), (3, 11), (4, 22), (4, 15)]
Map.fromListWith (+) [(2, 3), (2, 5), (2, 100), (3, 29), (3, 22), (3, 11), (4, 22), (4, 15)]
EOF

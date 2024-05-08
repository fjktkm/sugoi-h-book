#!/bin/bash

ghci <<EOF
fst (8, 11)
fst ("Wow", False)
snd (8, 11)
snd ("Wow", False)
zip [1, 2, 3, 4, 5] [5, 5, 5, 5, 5]
zip [1 .. 5] ["one", "two", "three", "four", "five"]
zip [5, 3, 2, 6, 2, 7, 2, 5, 4, 6, 6] ["im", "a", "turtle"]
zip [1 ..] ["apple", "orange", "cherry", "mango"]
EOF

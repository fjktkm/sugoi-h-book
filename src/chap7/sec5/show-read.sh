#!/bin/bash

ghci <<EOF
:l src/chap7/sec5/Person
mikeD
"mikeD is: " ++ show mikeD
read mysteryDude :: Person
read mysteryDude == mikeD
read "Just 3" :: Maybe a
read "Just 3" :: Maybe Int
EOF

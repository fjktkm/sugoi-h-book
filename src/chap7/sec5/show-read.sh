#!/bin/bash

ghci <<EOF
:l src/sec7/subsec5/Person
mikeD
"mikeD is: " ++ show mikeD
read mysteryDude :: Person
read mysteryDude == mikeD
read "Just 3" :: Maybe a
read "Just 3" :: Maybe Int
EOF

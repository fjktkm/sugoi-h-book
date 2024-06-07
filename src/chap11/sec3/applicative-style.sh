#!/bin/bash

ghci <<EOF
pure (+) <*> Just 3 <*> Just 5
pure (+) <*> Just 3 <*> Nothing
pure (+) <*> Nothing <*> Just 5
(++) <$> Just "johntra" <*> Just "volta"
(++) "johntra" "volta"
EOF

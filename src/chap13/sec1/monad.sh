#!/bin/bash

ghci <<EOF
(*) <$> Just 2 <*> Just 8
(++) <$> Just "exdeath" <*> Nothing
(-) <$> [3, 4] <*> [1, 2, 3]
EOF

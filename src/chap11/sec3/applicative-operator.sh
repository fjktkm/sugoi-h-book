#!/bin/bash

ghci <<EOF
Just (+ 3) <*> Just 9
pure (+ 3) <*> Just 10
pure (+ 3) <*> Just 9
Just (++ "hahah") <*> Nothing
Nothing <*> Just "woot"
EOF

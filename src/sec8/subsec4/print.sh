#!/bin/bash

ghci <<EOF
3
print 3
map (++ "!") ["hey", "ho", "woo"]
print $ map (++ "!") ["hey", "ho", "woo"]
EOF

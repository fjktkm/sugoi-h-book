#!/bin/bash

ghci <<EOF
True \`compare\` False
True > False
True < False
Nothing < Just 100
Nothing > Just (-49999)
Just 3 \`compare\` Just 2
Just 100 > Just 50
EOF

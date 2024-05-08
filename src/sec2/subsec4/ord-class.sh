#!/bin/bash

ghci <<EOF
"Abrakadabra" < "Zebra"
"Abrakadabra" \`compare\` "Zebra"
5 >= 2
5 \`compare\` 3
'b' > 'a'
EOF

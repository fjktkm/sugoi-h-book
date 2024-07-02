#!/bin/bash

ghci <<EOF
:l src/chap10/sec2/optimalPath
roadStep ([], []) (head heathrowToLondon)
optimalPath heathrowToLondon
EOF

runghc src/chap10/sec2/optimalPath.hs < src/chap10/sec2/paths.txt

#!/bin/bash

ghci <<EOF
:l src/sec10/subsec2/optimalPath
roadStep ([], []) (head heathrowToLondon)
optimalPath heathrowToLondon
EOF

runghc src/sec10/subsec2/optimalPath.hs < src/sec10/subsec2/paths.txt

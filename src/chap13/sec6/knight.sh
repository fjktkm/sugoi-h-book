#!/bin/bash

ghci <<EOF
:l src/chap13/sec6/Knight
moveKnight (6, 2)
moveKnight (8, 1)
(6, 2) \`canReachIn3\` (6, 1)
(6, 2) \`canReachIn3\` (7, 3)
EOF

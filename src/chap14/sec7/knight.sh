#!/bin/bash

ghci <<EOF
:l src/chap14/sec7/Knight
(6, 2) \`canReachIn3\` (6, 1)
(6, 2) \`canReachIn3\` (7, 3)
canReachIn 3 (6, 2) (6, 1)
canReachIn 3 (6, 2) (7, 3)
EOF

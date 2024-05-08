#!/bin/bash

cd src/sec1/subsec5/
ghci <<EOF
:l boomBangs
boomBangs [7 .. 13]
EOF

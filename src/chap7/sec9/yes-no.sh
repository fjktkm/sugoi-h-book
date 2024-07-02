#!/bin/bash

ghci <<EOF
:l src/chap7/sec9/YesNo.hs
yesno $ length []
yesno "haha"
yesno ""
yesno $ Just 0
yesno True
yesno EmptyTree
yesno []
yesno [0,0,0]
:t yesno
EOF

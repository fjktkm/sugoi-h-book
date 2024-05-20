#!/bin/bash

ghci <<EOF
:l src/sec7/subsec9/YesNo.hs
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

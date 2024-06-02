#!/bin/bash

ghci <<EOF
Right 20
Left "w00t"
:t Right 'a'
:t Left True
EOF

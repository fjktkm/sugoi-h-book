#!/bin/bash

ghci <<EOF
:t 'a'
:t True
:t "HELLO!"
:t (True, 'a')
:t 4 == 5
EOF

#!/bin/bash

ghci <<EOF
(1, 3)
(3, 'a', "hello")
(50, 50.4, "hello", 'b')
EOF

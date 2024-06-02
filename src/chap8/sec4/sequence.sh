#!/bin/bash

ghci <<EOF
sequence $ map print [1, 2, 3, 4, 5]
EOF

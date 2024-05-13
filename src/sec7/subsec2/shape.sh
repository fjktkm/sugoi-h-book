#!/bin/bash

ghci <<EOF
:l src/sec7/subsec2/Shape
:t Circle
:t Rectangle
area $ Circle 10 20 10
area $ Rectangle 0 0 100 100
Circle 10 20 5
Rectangle 50 230 60 90
map (Circle 10 20) [4, 5, 6, 6]
EOF

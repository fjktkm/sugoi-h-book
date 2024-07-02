#!/bin/bash

ghci <<EOF
:l src/chap7/sec2/Point
area (Rectangle (Point 0 0) (Point 100 100))
area (Circle (Point 0 0) 24)
nudge (Circle (Point 34 34) 10) 5 10
nudge (baseRect 40 100) 60 23
EOF

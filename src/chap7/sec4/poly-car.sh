#!/bin/bash

ghci <<EOF
:l src/sec7/subsec4/PolyCar
tellCar (Car "Ford" "Mustang" 1967)
tellCar (Car "Ford" "Mustang" "nineteen sixty seven")
:t Car "Ford" "Mustang" 1967
:t Car "Ford" "Mustang" "nineteen sixty seven"
EOF

#!/bin/bash

ghci <<EOF
:l src/chap7/sec4/PolyCar
tellCar (Car "Ford" "Mustang" 1967)
tellCar (Car "Ford" "Mustang" "nineteen sixty seven")
:t Car "Ford" "Mustang" 1967
:t Car "Ford" "Mustang" "nineteen sixty seven"
EOF

#!/bin/bash

ghci <<EOF
:l src/chap7/sec3/CarRecode
Car {company = "Ford", model = "Mustang", year = 1967}
EOF

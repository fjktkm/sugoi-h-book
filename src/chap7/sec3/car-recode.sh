#!/bin/bash

ghci <<EOF
:l src/sec7/subsec3/CarRecode
Car {company = "Ford", model = "Mustang", year = 1967}
EOF

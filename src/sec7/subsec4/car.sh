#!/bin/bash

ghci <<EOF
:l src/sec7/subsec4/Car
let stang = Car {company = "Ford", model = "Mustang", year = 1967}
tellCar stang
EOF

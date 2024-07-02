#!/bin/bash

ghci <<EOF
:l src/chap7/sec4/Car
let stang = Car {company = "Ford", model = "Mustang", year = 1967}
tellCar stang
EOF

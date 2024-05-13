#!/bin/bash

ghci <<EOF
:l src/sec7/subsec3/Person
let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"
guy
let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"
firstName guy
height guy
flavor guy
EOF

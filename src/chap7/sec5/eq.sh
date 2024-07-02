#!/bin/bash

ghci <<EOF
:l src/chap7/sec5/Person
mca == adRock
mikeD == adRock
mikeD == mikeD
mikeD == Person {firstName = "Michael", lastName = "Diamond", age = 43}
let beastieBoys = [mca, adRock, mikeD]
mikeD \`elem\` beastieBoys
EOF

#!/bin/bash

ghci <<EOF
:l src/sec7/subsec6/Locker
lockerLookup 101 lockers
lockerLookup 100 lockers
lockerLookup 102 lockers
lockerLookup 110 lockers
lockerLookup 105 lockers
EOF

#!/bin/bash

ghci <<EOF
:l src/chap7/sec8/TrafficLight.hs
Red == Red
Red == Yellow
Red \`elem\` [Red, Yellow, Green]
[Red, Yellow, Green]
EOF

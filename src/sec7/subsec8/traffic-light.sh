#!/bin/bash

ghci <<EOF
:l src/sec7/subsec8/TrafficLight.hs
Red == Red
Red == Yellow
Red \`elem\` [Red, Yellow, Green]
[Red, Yellow, Green]
EOF

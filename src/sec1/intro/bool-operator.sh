#!/bin/bash

ghci <<EOF
True && False
True && True
False || True
not False
not (True && True)
EOF

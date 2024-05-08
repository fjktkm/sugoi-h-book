#!/bin/bash

ghci <<EOF
let nouns = ["hobo", "frog", "pope"]
let adjectives = ["lazy", "grouchy", "scheming"]
[adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
EOF

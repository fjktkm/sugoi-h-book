#!/bin/bash

ghci <<EOF
let triples = [(a, b, c) | c <- [1..10], a <- [1..10], b <- [1..10]]
let rightTriangles = [(a, b, c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]
let rightTriangles' = [(a, b, c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a + b + c == 24]
rightTriangles'
EOF

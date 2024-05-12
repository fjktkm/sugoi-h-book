#!/bin/bash

ghci <<EOF
:l src/sec6/subsec3/map
Map.fromList [(3, "shoes"), (4, "trees"), (5, "bees")]
Map.fromList [("kima", "greggs"), ("jimmy", "mcnulty"), ("jay", "landsman")]
Map.fromList [("MS", 1), ("MS", 2), ("MS", 3)]
:t Map.lookup
Map.lookup "betty" phoneBook
Map.lookup "wendy" phoneBook
Map.lookup "grace" phoneBook
:t Map.insert
Map.lookup "grace" phoneBook
let newBook = Map.insert "grace" "341-9021" phoneBook
Map.lookup "grace" newBook
:t Map.size
Map.size phoneBook
Map.size newBook
string2digits "948-9282"
let intBook = Map.map string2digits phoneBook
:t intBook
Map.lookup "betty" intBook
EOF
""

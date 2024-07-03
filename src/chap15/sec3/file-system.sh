#!/bin/bash

ghci <<EOF
:l src/chap15/sec3/FileSystem
let newFocus = (myDisk, []) -: fsTo "pics" -: fsTo "skull_man(scary).bmp"
fst newFocus
let newFocus2 = newFocus -: fsUp -: fsTo "watermelon_smash.gif"
fst newFocus2
let newFocus = (myDisk, []) -: fsTo "pics" -: fsRename "cspi" -: fsUp
fst newFocus
let newFocus = (myDisk, []) -: fsTo "pics" -: fsNewFile (File "heh.jpg" "lol") -: fsUp
fst newFocus
EOF

#!/bin/bash

ghci <<EOF
:l src/chap7/sec9/YesnoIf.hs
yesnoIf [] "YEAH!" "NO!"
yesnoIf [2, 3, 4] "YEAH!" "NO!"
yesnoIf True "YEAH!" "NO!"
yesnoIf (Just 500) "YEAH!" "NO!"
yesnoIf Nothing "YEAH!" "NO!"
EOF

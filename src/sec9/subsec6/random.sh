#!/bin/bash

ghci <<EOF
:m +System.Random
random (mkStdGen 100)
random (mkStdGen 100) :: (Int, StdGen)
random (mkStdGen 100) :: (Int, StdGen)
random (mkStdGen 949494) :: (Int, StdGen)
random (mkStdGen 949488) :: (Float, StdGen)
random (mkStdGen 949488) :: (Bool, StdGen)
random (mkStdGen 949488) :: (Integer, StdGen)
EOF

#!/bin/bash

ghci <<EOF
:m + Control.Monad.Writer Data.Monoid
:l src/chap14/sec1/Writer
runWriter (return 3 :: Writer String Int)
runWriter (return 3 :: Writer (Sum Int) Int)
runWriter (return 3 :: Writer (Product Int) Int)
runWriter multWithLog
runWriter multWithLog'
EOF

#!/bin/bash

ghci <<EOF
:m +Control.Monad.Except
:t Right 4
:t Left "out of cheese error"
:t throwError
throwError "boom!" :: String
Left "boom" >>= \x -> return (x + 1)
Left "boom " >>= \x -> Left "no way!"
Right 100 >>= \x -> Left "no way!"
Right 3 >>= \x -> return (x + 100)
Right 3 >>= \x -> return (x + 100) :: Either String Int
EOF

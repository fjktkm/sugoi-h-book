#!/bin/bash

ghci <<EOF
Just 3 >>= (\x -> Just (show x ++ "!"))
Just 3 >>= (\x -> Just "!" >>= (\y -> Just (show x ++ y)))
let x = 3; y = "!" in show x ++ y
Nothing >>= (\x -> Just "!" >>= (\y -> Just (show x ++ y)))
Just 3 >>= (\x -> Nothing >>= (\y -> Just (show x ++ y)))
Just 3 >>= (\x -> Just "!" >>= (\y -> Nothing))
EOF

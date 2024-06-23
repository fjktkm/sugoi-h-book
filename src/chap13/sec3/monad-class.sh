#!/bin/bash

ghci <<EOF
return "WHAT" :: Maybe String
Just 9 >>= \x -> return (x * 10)
Nothing >>= \x -> return (x * 10)
EOF

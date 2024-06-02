#!/bin/bash

ghci <<EOF
:k Int
:k Maybe
:k Maybe Int
:k Either
:k Either String
:k Either String Int
EOF

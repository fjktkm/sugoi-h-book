#!/bin/bash

ghci <<EOF
:l src/sec11/subsec2/CMaybe
CNothing
CJust 0 "haha"
:t CNothing
:t CJust 0 "haha"
CJust 100 [1, 2, 3]
fmap (++ "ha") (CJust 0 "ho")
fmap (++ "ha") (fmap (++ "ha") (CJust 0 "ho"))
fmap (++ "blah") CNothing
fmap id (CJust 0 "haha")
id (CJust 0 "haha")
EOF

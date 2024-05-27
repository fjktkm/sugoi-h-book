#!/bin/bash

ghci <<EOF
import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString as S
B.pack [99,97,110]
B.pack [98 .. 120]
let by = B.pack [98, 111, 114, 116]
by
B.unpack by
B.fromChunks [S.pack [40, 41, 42], S.pack [43, 44, 45], S.pack [46, 47, 48]]
B.cons 85 $ B.pack [80, 81, 82, 84]
EOF

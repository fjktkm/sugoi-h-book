#!/bin/bash

ghci <<EOF
:m +Control.Monad Control.Monad.Writer Control.Monad.State
:l src/chap14/sec3/MonadState
join (Just (Just 9))
join (Just Nothing)
join Nothing
join [[1, 2, 3], [4, 5, 6]]
runWriter $ join (writer (writer (1, "aaa"), "bbb"))
join (Right (Right 9)) :: Either String Int
join (Right (Left "error")) :: Either String Int
join (Left "error") :: Either String Int
runState (join (state $ \s -> (push 10, 1 : 2 : s))) [0, 0, 0]
EOF

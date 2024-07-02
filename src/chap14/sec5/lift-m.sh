#!/bin/bash

ghci <<EOF
:m +Control.Monad Control.Monad.Writer
:l src/chap14/sec3/MonadState
liftM (* 3) (Just 8)
fmap (* 3) (Just 8)
runWriter $ liftM not $ writer (True, "chickpeas")
runWriter $ fmap not $ writer (True, "chickpeas")
runState (liftM (+ 100) pop) [1, 2, 3, 4]
runState (fmap (+ 100) pop) [1, 2, 3, 4]
(+) <$> Just 3 <*> Just 5
(+) <$> Just 3 <*> Nothing
Just (+ 3) <*> Just 4
Just (+ 3) \`ap\` Just 4
[(+ 1), (+ 2), (+ 3)] <*> [10, 11]
[(+ 1), (+ 2), (+ 3)] \`ap\` [10, 11]
EOF

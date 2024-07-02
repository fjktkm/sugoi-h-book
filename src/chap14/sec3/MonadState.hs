import Control.Monad.State

type Stack = [Int]

stackyStack :: State Stack ()
stackyStack = do
  stackNow <- get
  if stackNow == [1, 2, 3]
    then put [8, 3, 1]
    else put [9, 2, 1]

pop :: State Stack Int
pop = do
  stack <- get
  case stack of
    (x : xs) -> do
      put xs
      return x
    [] -> error "pop: empty stack"

push :: Int -> State Stack ()
push s = do
  xs <- get
  put (s : xs)

addStuff :: Int -> Int
addStuff = do
  a <- (* 2)
  b <- (+ 10)
  return (a + b)

addStuff' :: Int -> Int
addStuff' x =
  let a = x * 2
      b = x + 10
   in a + b

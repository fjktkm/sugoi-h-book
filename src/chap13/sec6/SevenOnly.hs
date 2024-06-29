import Control.Monad

sevenOnly :: [Int]
sevenOnly = do
  x <- [1 .. 50]
  guard ('7' `elem` show x)
  return x

main :: IO ()
main = print sevenOnly

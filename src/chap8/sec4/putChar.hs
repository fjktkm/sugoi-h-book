import Prelude hiding (putStr)

main :: IO ()
main = do
  putChar 't'
  putChar 'e'
  putChar 'h'

putStr :: String -> IO ()
putStr [] = return ()
putStr (x : xs) = do
  putChar x
  putStr xs

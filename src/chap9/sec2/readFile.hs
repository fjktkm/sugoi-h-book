import System.IO

main :: IO ()
main = do
  contents <- readFile "src/chap9/sec2/baabaa.txt"
  putStr contents

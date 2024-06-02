import System.IO

main :: IO ()
main = do
  contents <- readFile "src/sec9/subsec2/baabaa.txt"
  putStr contents

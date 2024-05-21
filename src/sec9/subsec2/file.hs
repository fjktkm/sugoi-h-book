import System.IO

main :: IO ()
main = do
  handle <- openFile "src/sec9/subsec2/baabaa.txt" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle

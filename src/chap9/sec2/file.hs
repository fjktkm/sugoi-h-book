import System.IO

main :: IO ()
main = do
  handle <- openFile "src/chap9/sec2/baabaa.txt" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle

import Data.Char
import System.IO

main :: IO ()
main = do
  contents <- readFile "src/chap9/sec2/baabaa.txt"
  writeFile "src/chap9/sec2/baabaacaps.txt" (map toUpper contents)

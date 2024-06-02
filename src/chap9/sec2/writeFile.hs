import System.IO
import Data.Char

main :: IO ()
main = do
  contents <- readFile "src/sec9/subsec2/baabaa.txt"
  writeFile "src/sec9/subsec2/baabaacaps.txt" (map toUpper contents)

import System.IO

main :: IO ()
main = do
  withFile
    "src/chap9/sec2/baabaa.txt"
    ReadMode
    ( \handle -> do
        contents <- hGetContents handle
        putStr contents
    )

-- withFile :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
-- withFile name mode f = bracket (openFile name mode)
--   (\handle -> hClose handle)
--   (\handle -> f handle)

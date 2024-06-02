import Control.Exception
import Data.ByteString.Lazy qualified as B
import System.Directory (removeFile, renameFile)
import System.Environment (getArgs)
import System.IO (hClose, openTempFile)

main :: IO ()
main = do
  (fileName1 : fileName2 : _) <- getArgs
  copy fileName1 fileName2

copy :: FilePath -> FilePath -> IO ()
copy source dest = do
  contents <- B.readFile source
  bracketOnError
    (openTempFile "." "temp")
    ( \(tempName, tempHandle) -> do
        hClose tempHandle
        removeFile tempName
    )
    ( \(tempName, tempHandle) -> do
        B.hPutStr tempHandle contents
        hClose tempHandle
        renameFile tempName dest
    )

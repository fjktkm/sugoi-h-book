import Control.Monad

main :: IO ()
main = do
  input <- getLine
  when (input == "SWORDFISH") $ do
    putStrLn input

-- main = do
--   input <- getLine
--   if (input == "SWORDFISH")
--     then putStrLn input
--     else return ()

main :: IO ()
main = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn ("Hey " ++ name ++ ", you rock!")

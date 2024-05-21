main = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn $ "Zis is your future: " ++ tellFortune name

tellFortune :: String -> String
tellFortune _ = "You will be rich!"

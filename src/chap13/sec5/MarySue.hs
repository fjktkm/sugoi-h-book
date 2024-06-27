marySue :: Maybe Bool
marySue = do
  x <- Just 9
  Just (x > 8)

main :: IO ()
main = print marySue

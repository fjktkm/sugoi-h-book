import Data.Char
import Data.Map qualified as Map

phoneBook :: [(String, String)]
phoneBook =
  [ ("betty", "555-2938"),
    ("betty", "342-2492"),
    ("bonnie", "452-2928"),
    ("patsy", "493-2928"),
    ("patsy", "943-2929"),
    ("patsy", "827-9162"),
    ("lucille", "205-2928"),
    ("wendy", "939-8282"),
    ("penny", "853-2492"),
    ("penny", "555-2111")
  ]

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith add xs
  where
    add number1 number2 = number1 ++ ", " ++ number2

phoneBookToMap' :: (Ord k) => [(k, a)] -> Map.Map k [a]
phoneBookToMap' xs = Map.fromListWith (++) $ map (\(k, v) -> (k, [v])) xs

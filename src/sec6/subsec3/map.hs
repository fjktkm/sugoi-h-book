import Data.Char
import Data.Map qualified as Map

phoneBook :: Map.Map String String
phoneBook =
  Map.fromList
    [ ("betty", "555-2938"),
      ("bonnie", "456-2928"),
      ("patsy", "493-2928"),
      ("lucille", "205-2928"),
      ("wendy", "939-8282"),
      ("penny", "853-2492")
    ]

string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit

-- type PhoneBook = [(String, String)]

type PhoneNumber = String

type Name = String

type PhoneBook = [(Name, PhoneNumber)]

-- inPhoneBook :: String -> String -> [(String, String)] -> Bool
inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name, pnumber) `elem` pbook

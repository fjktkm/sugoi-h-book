data Person = Person
  { firstName :: String,
    lastName :: String,
    age :: Int
  }
  deriving (Eq, Show, Read)

mikeD =
  Person
    { firstName = "Michael",
      lastName = "Diamond",
      age = 43
    }

adRock =
  Person
    { firstName = "Adam",
      lastName = "Horovitz",
      age = 41
    }

mca =
  Person
    { firstName = "Michael",
      lastName = "Diamond",
      age = 43
    }

mysteryDude =
  "Person { firstName =\"Michael\""
    ++ ", lastName =\"Diamond\""
    ++ ", age = 43}"

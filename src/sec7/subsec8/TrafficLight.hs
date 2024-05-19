data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  (==) :: TrafficLight -> TrafficLight -> Bool
  Red == Red = True
  Green == Green = True
  Yellow == Yellow = True
  _ == _ = False

instance Show TrafficLight where
  show :: TrafficLight -> String
  show Red = "Red light"
  show Yellow = "Yellow light"
  show Green = "Green light"

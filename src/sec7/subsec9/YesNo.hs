module Src.Sec7.Subsec9.YesNo where

import Src.Sec7.Subsec7.Tree (Tree (EmptyTree))
import Src.Sec7.Subsec8.TrafficLight (TrafficLight (Red))

class YesNo a where
  yesno :: a -> Bool

instance YesNo Int where
  yesno :: Int -> Bool
  yesno 0 = False
  yesno _ = True

instance YesNo [a] where
  yesno :: [a] -> Bool
  yesno [] = False
  yesno _ = True

instance YesNo Bool where
  yesno :: Bool -> Bool
  yesno = id

instance YesNo (Maybe a) where
  yesno :: Maybe a -> Bool
  yesno (Just _) = True
  yesno Nothing = False

instance YesNo (Tree a) where
  yesno :: Tree a -> Bool
  yesno EmptyTree = False
  yesno _ = True

instance YesNo TrafficLight where
  yesno :: TrafficLight -> Bool
  yesno Red = False
  yesno _ = True

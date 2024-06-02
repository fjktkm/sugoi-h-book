data CMaybe a = CNothing | CJust Int a deriving (Show)

instance Functor CMaybe where
  fmap :: (a -> b) -> CMaybe a -> CMaybe b
  fmap f CNothing = CNothing
  fmap f (CJust counter x) = CJust (counter + 1) (f x)

import Prelude hiding (Functor)

class Functor f where
  fmap :: (a -> b) -> f a -> f b

instance Functor (Either a) where
  fmap :: (b -> c) -> Either a b -> Either a c
  fmap _ (Left x) = Left x
  fmap f (Right y) = Right (f y)

{-# OPTIONS_GHC -Wno-noncanonical-monoid-instances #-}

import Control.Monad.Writer

newtype DiffList a = DiffList {getDiffList :: [a] -> [a]}

-- Monoid は Semigroup のサブクラスになったため，Semigroup のインスタンスの定義が必要になった
instance Semigroup (DiffList a) where
  (<>) :: DiffList a -> DiffList a -> DiffList a
  (DiffList f) <> (DiffList g) = DiffList (f . g)

instance Monoid (DiffList a) where
  mempty :: DiffList a
  mempty = DiffList id
  mappend :: DiffList a -> DiffList a -> DiffList a
  (DiffList f) `mappend` (DiffList g) = DiffList (f . g)

toDiffList :: [a] -> DiffList a
toDiffList xs = DiffList (xs ++)

fromDiffList :: DiffList a -> [a]
fromDiffList (DiffList f) = f []

gcdReverse :: Int -> Int -> Writer (DiffList String) Int
gcdReverse a b
  | b == 0 = do
      tell (toDiffList ["Finished with  " ++ show a])
      return a
  | otherwise = do
      result <- gcdReverse b (a `mod` b)
      tell (toDiffList [show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b)])
      return result

finalCountDown :: Int -> Writer (DiffList String) ()
finalCountDown 0 = do
  tell (toDiffList ["0"])
finalCountDown x = do
  finalCountDown (x - 1)
  tell (toDiffList [show x])

finalCountDown' :: Int -> Writer [String] ()
finalCountDown' 0 = do
  tell ["0"]
finalCountDown' x = do
  finalCountDown' (x - 1)
  tell [show x]

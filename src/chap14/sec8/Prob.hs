{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use first" #-}
{-# HLINT ignore "Use second" #-}

import Data.List
import Data.Ratio

newtype Prob a = Prob {getProb :: [(a, Rational)]} deriving (Show)

instance Functor Prob where
  fmap :: (a -> b) -> Prob a -> Prob b
  fmap f (Prob xs) = Prob $ map (\(x, p) -> (f x, p)) xs

thisSituation :: Prob (Prob Char)
thisSituation =
  Prob
    [ ( Prob [('a', 1 % 2), ('b', 1 % 2)],
        1 % 4
      ),
      ( Prob [('c', 1 % 2), ('d', 1 % 2)],
        3 % 4
      )
    ]

flatten :: Prob (Prob a) -> Prob a
flatten (Prob xs) = Prob $ concatMap multAll xs
  where
    multAll (Prob innerxs, p) = map (\(x, r) -> (x, p * r)) innerxs

instance Applicative Prob where
  pure :: a -> Prob a
  pure x = Prob [(x, 1 % 1)]

  (<*>) :: Prob (a -> b) -> Prob a -> Prob b
  Prob fs <*> Prob xs = Prob [(f x, p1 * p2) | (f, p1) <- fs, (x, p2) <- xs]

instance Monad Prob where
  (>>=) :: Prob a -> (a -> Prob b) -> Prob b
  m >>= f = flatten (fmap f m)

instance MonadFail Prob where
  fail :: String -> Prob a
  fail _ = Prob []

data Coin = Heads | Tails deriving (Show, Eq)

coin :: Prob Coin
coin = Prob [(Heads, 1 % 2), (Tails, 1 % 2)]

loadedCoin :: Prob Coin
loadedCoin = Prob [(Heads, 1 % 10), (Tails, 9 % 10)]

flipThree :: Prob Bool
flipThree = do
  a <- coin
  b <- coin
  c <- loadedCoin
  return (all (== Tails) [a, b, c])

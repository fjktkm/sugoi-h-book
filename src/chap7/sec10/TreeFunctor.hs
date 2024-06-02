import Src.Sec7.Subsec7.Tree (Tree (..))

instance Functor Tree where
  fmap :: (a -> b) -> Tree a -> Tree b
  fmap f EmptyTree = EmptyTree
  fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

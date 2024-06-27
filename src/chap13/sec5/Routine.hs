type Birds = Int

type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left, right)
  | abs ((left + n) - right) < 4 = Just (left + n, right)
  | otherwise = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
  | abs (left - (right + n)) < 4 = Just (left, right + n)
  | otherwise = Nothing

(-:) :: t1 -> (t1 -> t2) -> t2
x -: f = f x

banana :: Pole -> Maybe Pole
banana _ = Nothing

routine :: Maybe Pole
routine = do
  let start = (0, 0)
  first <- landLeft 2 start
  second <- landRight 2 first
  landLeft 1 second

routineBanana :: Maybe Pole
routineBanana = do
  let start = (0, 0)
  first <- landLeft 2 start
  Nothing
  second <- landRight 2 first
  landLeft 1 second

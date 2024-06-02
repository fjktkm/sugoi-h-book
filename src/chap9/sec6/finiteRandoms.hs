import System.Random

finiteRandoms :: (RandomGen g, Random a, Num n, Eq n) => n -> g -> ([a], g)
finiteRandoms 0 gen = ([], gen)
finiteRandoms n gen =
  let (value, newGen) = random gen
      (resultOfList, finalGen) = finiteRandoms (n - 1) newGen
   in (value : resultOfList, finalGen)

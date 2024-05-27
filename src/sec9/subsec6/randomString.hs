import System.Random ( getStdGen, Random(randomRs), newStdGen )

main :: IO ()
main = do
  gen <- getStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen)

  gen2 <- getStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen2)

  gen' <- newStdGen
  putStrLn $ take 20 (randomRs ('a', 'z') gen')

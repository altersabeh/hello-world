module CLI.Function.Random (printRandomNumbers) where

import Numbers.Utils (factorialRandom, fibonacciRandom)

printRandomNumbers :: IO ()
printRandomNumbers = do
  putStrLn "Some random numbers : "
  putStrLn =<< fibonacciRandom
  putStrLn =<< factorialRandom

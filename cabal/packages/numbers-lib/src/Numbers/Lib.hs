module Numbers.Lib (factorial, fibonacci, randomFactorial, randomFibonacci) where

import System.Random (randomRIO)

fibonacci :: Integer -> Integer
fibonacci n = fibs !! fromIntegral n
  where
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

randomFibonacci :: IO String
randomFibonacci = do
  randomNum <- randomRIO (1, 50 :: Integer)
  let fib = fibonacci randomNum
  return $ "Fib[" ++ show randomNum ++ "] = " ++ show fib

factorial :: Integer -> Integer
factorial n = product [1..n]

randomFactorial :: IO String
randomFactorial = do
  randomNum <- randomRIO (1, 25 :: Integer)
  let fact = factorial randomNum
  return $ "Fact[" ++ show randomNum ++ "] = " ++ show fact

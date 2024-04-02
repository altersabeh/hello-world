module Numbers.Lib (factorial, fibonacci, factorialRandom, fibonacciRandom) where

import System.Random (randomRIO)

fibonacci :: Integer -> Integer
fibonacci n = fibs !! fromIntegral n
    where
        fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibonacciRandom :: IO String
fibonacciRandom = do
    randomNum <- randomRIO (1, 50 :: Integer)
    let fib = fibonacci randomNum
    return $ "Fib[" ++ show randomNum ++ "] = " ++ show fib

factorial :: Integer -> Integer
factorial n = product [1 .. n]

factorialRandom :: IO String
factorialRandom = do
    randomNum <- randomRIO (1, 25 :: Integer)
    let fact = factorial randomNum
    return $ "Fact[" ++ show randomNum ++ "] = " ++ show fact

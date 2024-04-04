module Numbers.Utils.Operations.FibonacciUtils (fibonacci, fibonacciRandom) where

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

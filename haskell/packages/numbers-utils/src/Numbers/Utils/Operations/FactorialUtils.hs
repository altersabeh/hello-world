module Numbers.Utils.Operations.FactorialUtils (factorial, factorialRandom) where

import System.Random (randomRIO)

factorial :: Integer -> Integer
factorial n = product [1 .. n]

factorialRandom :: IO String
factorialRandom = do
    randomNum <- randomRIO (1, 25 :: Integer)
    let fact = factorial randomNum
    return $ "Fact[" ++ show randomNum ++ "] = " ++ show fact

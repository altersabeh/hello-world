module Numbers.Utils.Operations.FactorUtils (factor, factorRandom, primeFactor, primeFactorRandom) where

import Numeric.Natural (Natural)
import System.Random (randomRIO)

factor :: Natural -> [Natural]
factor n = [x | x <- [1 .. n], n `mod` x == 0]

factorRandom :: IO String
factorRandom = do
    randomNum <- randomRIO (1, 500000 :: Integer)
    let factors = factor (fromIntegral randomNum)
    return $ "Factor[" ++ show randomNum ++ "] = " ++ show factors

primeFactor :: Natural -> [Natural]
primeFactor 0 = []
primeFactor 1 = []
primeFactor num = go num 2
    where
        go n divisor
            | divisor * divisor > n = [n]
            | n `mod` divisor == 0 = divisor : go (n `div` divisor) divisor
            | divisor == 2 = go n (divisor + 1)
            | otherwise = go n (divisor + 2)

primeFactorRandom :: IO String
primeFactorRandom = do
    randomNum <- randomRIO (1, 500000 :: Integer)
    let primeFactors = primeFactor (fromIntegral randomNum)
    return $ "PFactor[" ++ show randomNum ++ "] = " ++ show primeFactors

module Numbers.Utils.Operations.FactorUtils
    ( factor
    , factorRandom
    , primeFactor
    , primeFactorRandom
    ) where

import Numeric.Natural (Natural)
import System.Random (randomRIO)

-- |
-- = @factor@
--
-- The function @factor@ is used to calculate the factors of a number.
--
-- __Arguments:__
--
-- * @num: Natural@ - The number to calculate the factors.
--
-- __Return:__
--
-- * @[Natural]@ - The factors of the number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorUtils (factor)
-- let factors = factor 25
-- putStrLn $ "Factor[25] = " ++ show factors
-- @
--
-- __Output:__
--
-- @
-- "Factor[25] = [1,5,25]"
-- @
factor :: Natural -> [Natural]
factor num = [x | x <- [1 .. num], num `mod` x == 0]

-- |
-- = @factorRandom@
--
-- The function @factorRandom@ is used to calculate the factors of a random
-- number.
--
-- __Return:__
--
-- * @String@ - The factors of the random number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorUtils (factorRandom)
-- factors <- factorRandom
-- putStrLn factors
-- @
--
-- __Output:__
--
-- @
-- "Factor[5] = [1,5]"
-- @
factorRandom :: IO String
factorRandom = do
    randomNum <- randomRIO (1, 500000 :: Integer)
    let factors = factor (fromIntegral randomNum)
    return $ "Factor[" ++ show randomNum ++ "] = " ++ show factors

-- |
-- = @primeFactor@
--
-- The function @primeFactor@ is used to calculate the prime factors of a
-- number.
--
-- __Arguments:__
--
-- * @num: Natural@ - The number to calculate the prime factors.
--
-- __Return:__
--
-- * @[Natural]@ - The prime factors of the number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorUtils (primeFactor)
-- let primeFactors = primeFactor 25
-- putStrLn $ "PFactor[25] = " ++ show primeFactors
-- @
--
-- __Output:__
--
-- @
-- "PFactor[25] = [5,5]"
-- @
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

-- |
-- = @primeFactorRandom@
--
-- The function @primeFactorRandom@ is used to calculate the prime factors of a
-- random number.
--
-- __Return:__
--
-- * @String@ - The prime factors of the random number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorUtils (primeFactorRandom)
-- primeFactors <- primeFactorRandom
-- putStrLn primeFactors
-- @
--
-- __Output:__
--
-- @
-- "PFactor[20] = [2,2,5]"
-- @
primeFactorRandom :: IO String
primeFactorRandom = do
    randomNum <- randomRIO (1, 500000 :: Integer)
    let primeFactors = primeFactor (fromIntegral randomNum)
    return $ "PFactor[" ++ show randomNum ++ "] = " ++ show primeFactors

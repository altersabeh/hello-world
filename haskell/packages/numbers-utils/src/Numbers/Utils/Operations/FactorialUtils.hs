module Numbers.Utils.Operations.FactorialUtils (factorial, factorialRandom) where

import System.Random (randomRIO)

-- |
-- # @factorial@
--
-- The function @factorial@ is used to calculate the factorial of a number.
--
-- __Arguments:__
--
-- * @num: Integer@ - The number to calculate the factorial.
--
-- __Return:__
--
-- * @Integer@ - The factorial of the number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorialUtils (factorial)
-- let fact = factorial 25
-- putStrLn $ "Fact[25] = " ++ show fact
-- @
--
-- __Output:__
--
-- @
-- "Fact[25] = 15511210043330985984000000"
-- @
factorial :: Integer -> Integer
factorial num = product [1 .. num]

-- |
-- # @factorialRandom@
--
-- The function @factorialRandom@ is used to calculate the factorial of a random
-- number.
--
-- __Return:__
--
-- * @String@ - The factorial of the random number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorialUtils (factorialRandom)
-- fact <- factorialRandom
-- putStrLn fact
-- @
--
-- __Output:__
--
-- @
-- "Fact[5] = 120"
-- @
factorialRandom :: IO String
factorialRandom = do
    randomNum <- randomRIO (1, 25 :: Integer)
    let fact = factorial randomNum
    return $ "Fact[" ++ show randomNum ++ "] = " ++ show fact

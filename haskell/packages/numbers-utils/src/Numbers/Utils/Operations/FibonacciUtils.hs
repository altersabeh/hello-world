module Numbers.Utils.Operations.FibonacciUtils (fibonacci, fibonacciRandom) where

import System.Random (randomRIO)

-- |
-- # @fibonacci@
--
-- The function @fibonacci@ is used to calculate the Fibonacci number.
--
-- __Arguments:__
--
-- * @num: Integer@ - The number to calculate the Fibonacci number.
--
-- __Return:__
--
-- * @Integer@ - The Fibonacci number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FibonacciUtils (fibonacci)
-- let fib = fibonacci 5
-- putStrLn $ "Fib[5] = " ++ show fib
-- @
--
-- __Output:__
--
-- @
-- "Fib[5] = 5"
-- @
fibonacci :: Integer -> Integer
fibonacci num = fibs !! fromIntegral num
    where
        fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- |
-- # @fibonacciRandom@
--
-- The function @fibonacciRandom@ is used to calculate the Fibonacci number of a
-- random number.
--
-- __Return:__
--
-- * @String@ - The Fibonacci number of the random number.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FibonacciUtils (fibonacciRandom)
-- fib <- fibonacciRandom
-- putStrLn fib
-- @
--
-- __Output:__
--
-- @
-- "Fib[50] = 12586269025"
-- @
fibonacciRandom :: IO String
fibonacciRandom = do
    randomNum <- randomRIO (1, 50 :: Integer)
    let fib = fibonacci randomNum
    return $ "Fib[" ++ show randomNum ++ "] = " ++ show fib

module CLI.Function.Random (printRandomNumbers) where

import Numbers.Utils.Operations.FactorialUtils (factorialRandom)
import Numbers.Utils.Operations.FibonacciUtils (fibonacciRandom)

-- |
-- = @printRandomNumbers@
--
-- The function @printRandomNumbers@ is used to print the random fibonacci and
-- factorial numbers by calling the @fibonacciRandom@ and @factorialRandom@.
printRandomNumbers :: IO ()
printRandomNumbers = do
    putStrLn "Some random numbers : "
    putStrLn =<< fibonacciRandom
    putStrLn =<< factorialRandom

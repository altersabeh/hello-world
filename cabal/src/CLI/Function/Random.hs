module CLI.Function.Random (printRandomNumbers) where

import Numbers.Utils.Operations.FactorialUtils (factorialRandom)
import Numbers.Utils.Operations.FibonacciUtils (fibonacciRandom)

printRandomNumbers :: IO ()
printRandomNumbers = do
    putStrLn "Some random numbers : "
    putStrLn =<< fibonacciRandom
    putStrLn =<< factorialRandom

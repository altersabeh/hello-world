module CLI.Function.Number (printNumberCalculations) where

import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

import Numbers.Utils.Operations.FactorialUtils (factorial)
import Numbers.Utils.Operations.FibonacciUtils (fibonacci)

-- |
-- = @getUserNumber@
--
-- The function @getUserNumber@ is used to get the user number.
--
-- __Return:__
--
-- * @IO Integer@ - The user number.
--
-- __Example:__
--
-- @
-- import CLI.Function.Number (getUserNumber)
-- number <- getUserNumber
-- putStrLn $ "Number : " ++ show number
-- @
--
-- __Output:__
--
-- @
-- "Enter a number : 10"
-- "Number : 10"
-- @
getUserNumber :: IO Integer
getUserNumber = do
    putStr "Enter a number : "
    hFlush stdout
    maybeNum <- fmap readMaybe getLine
    case maybeNum of
        Just num -> return num
        Nothing -> return 0

-- |
-- = @printNumberCalculations@
--
-- The function @printNumberCalculations@ is used to print the fibonacci and
-- factorial of the user number by calling the @fibonacci@ and @factorial@.
printNumberCalculations :: IO ()
printNumberCalculations = do
    number <- getUserNumber
    putStrLn $ "Fib[" ++ show number ++ "] = " ++ show (fibonacci number)
    putStrLn $ "Fact[" ++ show number ++ "] = " ++ show (factorial number)

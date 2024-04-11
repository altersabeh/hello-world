module Main where

import System.Environment (getArgs)
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

import Numbers.Utils.Operations.FibonacciUtils (fibonacci)

-- |
-- # @getUserNumber@
--
-- The function @getUserNumber@ is used to get a number from the user.
--
-- __Return:__
--
-- * @Natural@ - The number entered by the user.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorUtils (getUserNumber)
-- number <- getUserNumber
-- putStrLn $ "Number : " ++ show number
-- @
--
-- __Output:__
--
-- @
-- "Enter a number : 5"
-- "Number : 5
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
-- # @printFibonacci@
--
-- The function @printFibonacci@ is used to print the Fibonacci number.
--
-- __Arguments:__
--
-- * @args: IO ()@ - The command line arguments.
printFibonacci :: IO ()
printFibonacci = do
    args <- getArgs
    number <-
        if not (null args)
            then return (read (head args) :: Integer)
            else getUserNumber
    putStrLn $ "Fib[" ++ show number ++ "] = " ++ show (fibonacci number)

-- |
-- # @main@
--
-- The main function is the entry point that starts the program.
main :: IO ()
main = printFibonacci

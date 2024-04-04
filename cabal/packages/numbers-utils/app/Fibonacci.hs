module Main where

import Numbers.Utils.Operations.FibonacciUtils (fibonacci)
import System.Environment (getArgs)
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

getUserNumber :: IO Integer
getUserNumber = do
    putStr "Enter a number: "
    hFlush stdout
    maybeNum <- fmap readMaybe getLine
    case maybeNum of
        Just num -> return num
        Nothing -> return 0

printFibonacci :: IO ()
printFibonacci = do
    args <- getArgs
    number <-
        if not (null args)
            then return (read (head args) :: Integer)
            else getUserNumber
    putStrLn $ "Fib[" ++ show number ++ "] = " ++ show (fibonacci number)

main :: IO ()
main = printFibonacci

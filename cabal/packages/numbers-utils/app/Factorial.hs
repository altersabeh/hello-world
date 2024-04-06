module Main where

import System.Environment (getArgs)
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

import Numbers.Utils.Operations.FactorialUtils (factorial)

getUserNumber :: IO Integer
getUserNumber = do
    putStr "Enter a number : "
    hFlush stdout
    maybeNum <- fmap readMaybe getLine
    case maybeNum of
        Just num -> return num
        Nothing -> return 0

printFactorial :: IO ()
printFactorial = do
    args <- getArgs
    number <-
        if not (null args)
            then return (read (head args) :: Integer)
            else getUserNumber
    putStrLn $ "Fact[" ++ show number ++ "] = " ++ show (factorial number)

main :: IO ()
main = printFactorial

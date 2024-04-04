module Main where

import System.Environment (getArgs)

import CLI.Function.Greeter (printGoodbyeMessage, printWelcomeMessage)

main :: IO ()
main = do
    args <- getArgs
    putStrLn "==============================================="
    printWelcomeMessage args
    printGoodbyeMessage args
    putStrLn "==============================================="

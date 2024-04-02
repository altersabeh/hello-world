module Main where

import CLI.Function.Greeter (printGoodbyeMessage, printWelcomeMessage)
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    putStrLn "==============================================="
    printWelcomeMessage args
    printGoodbyeMessage args
    putStrLn "==============================================="

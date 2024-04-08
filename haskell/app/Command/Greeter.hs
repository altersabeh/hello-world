module Main where

import System.Environment (getArgs)

import CLI.Function.Greeter (printGoodbyeMessage, printWelcomeMessage)

-- |
-- = `main`
--
-- This function is the main entry point for the application.
--
-- __Arguments:__
--
-- * `args` - The command line arguments.
main :: IO ()
main = do
    args <- getArgs
    putStrLn "==============================================="
    printWelcomeMessage args
    printGoodbyeMessage args
    putStrLn "==============================================="

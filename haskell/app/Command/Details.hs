module Main where

import System.Environment (getArgs)

import CLI.Function.Details (printUserDetails)

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
    printUserDetails args
    putStrLn "==============================================="

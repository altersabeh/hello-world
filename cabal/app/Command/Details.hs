module Main where

import CLI.Function.Details (printUserDetails)
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    putStrLn "==============================================="
    printUserDetails args
    putStrLn "==============================================="

module Main where

import System.Environment (getArgs)

import CLI.Function.Details (printUserDetails)

main :: IO ()
main = do
    args <- getArgs
    putStrLn "==============================================="
    printUserDetails args
    putStrLn "==============================================="

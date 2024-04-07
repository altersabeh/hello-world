module Main where

import CLI.Function.Number (printNumberCalculations)

main :: IO ()
main = do
    putStrLn "==============================================="
    printNumberCalculations
    putStrLn "==============================================="

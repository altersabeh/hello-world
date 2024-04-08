module Main where

import CLI.Function.Number (printNumberCalculations)

-- |
-- = @main@
--
-- This function is the main entry point for the application.
main :: IO ()
main = do
    putStrLn "==============================================="
    printNumberCalculations
    putStrLn "==============================================="

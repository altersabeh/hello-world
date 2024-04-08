module Main where

import CLI.Function.Random (printRandomNumbers)

-- |
-- = `main`
--
-- This function is the main entry point for the application.
main :: IO ()
main = do
    putStrLn "==============================================="
    printRandomNumbers
    putStrLn "==============================================="

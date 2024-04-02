module Main where

import CLI.Function.Random (printRandomNumbers)

main :: IO ()
main = do
    putStrLn "==============================================="
    printRandomNumbers
    putStrLn "==============================================="

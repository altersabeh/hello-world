module Main where

import Hello.World (printDate)

main :: IO ()
main = do
    putStrLn =<< printDate

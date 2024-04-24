module Main where

import Hello.World (printDate)

-- |
-- # @main@
--
-- The main function is the entry point that starts the program.
main :: IO ()
main = do
    putStrLn =<< printDate

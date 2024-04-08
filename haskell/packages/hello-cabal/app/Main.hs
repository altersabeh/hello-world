module Main where

import Hello.World (greeting)

-- |
-- = `main`
--
-- This is the main function that starts the program.
main :: IO ()
main = do
    putStrLn greeting

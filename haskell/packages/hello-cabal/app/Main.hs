module Main where

import Hello.World (greeting)

main :: IO ()
main = do
    putStrLn greeting

module Main where

import System.Environment (getArgs)

import Hello.World (printGreeting)

main :: IO ()
main = do
    args <- getArgs
    putStrLn $ printGreeting args

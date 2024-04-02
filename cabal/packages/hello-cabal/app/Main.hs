module Main where

import Hello.World (printGreeting)
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    putStrLn $ printGreeting args

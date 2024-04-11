module Main where

import CLI.Function.Banner (printBannerMessage)

-- |
-- # @main@
--
-- This function is the main entry point for the application.
main :: IO ()
main = do
    putStrLn "==============================================="
    printBannerMessage
    putStrLn "==============================================="

module Main where

import CLI.Function.Banner (printBannerMessage)

main :: IO ()
main = do
    putStrLn "==============================================="
    printBannerMessage
    putStrLn "==============================================="

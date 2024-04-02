module CLI.Function.Banner (printBannerMessage) where

import Goodbye.World (printBanner)

printBannerMessage :: IO ()
printBannerMessage = putStrLn printBanner

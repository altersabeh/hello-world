module CLI.Function.Banner (printBannerMessage) where

import Goodbye.World (printBanner)

-- |
-- = @printBannerMessage@
--
-- The function @printBannerMessage@ is used to print the banner message by
-- calling the @printBanner@ function.
printBannerMessage :: IO ()
printBannerMessage = putStrLn printBanner

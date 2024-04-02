module Hello.World (printDate, printGreeting) where

import Data.Time (getCurrentTime)
import Data.Time.Format (defaultTimeLocale, formatTime)
import Data.Time.LocalTime (utcToLocalZonedTime)

printGreeting :: [String] -> String
printGreeting [] = "Hello World from Cabal !"
printGreeting name = "Hello " ++ unwords name ++ " from Cabal !"

printDate :: IO String
printDate = do
    currentTime <- getCurrentTime >>= utcToLocalZonedTime
    let formattedDate = formatTime defaultTimeLocale "%B %d, %Y at %I:%M %p" currentTime
    return $ "Today is " ++ formattedDate

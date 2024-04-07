module Hello.World (greeting, printDate, printGreeting) where

import Data.Time (getCurrentTime)
import Data.Time.Format (defaultTimeLocale, formatTime)
import Data.Time.LocalTime (utcToLocalZonedTime)

-- | = 'greeting'
-- A constant string that contains a greeting message.
--
-- __Example:__
--
-- @
-- import Hello.World (greeting)
--
-- putStrLn $ greeting -- "Hello, Haskell's Here !"
-- @
-- __Output:__
--
-- @
-- "Hello, Haskell's Here !"
-- @
greeting :: String
greeting = "Hello, Haskell's Here !"

-- | = 'printGreeting'
-- This function prints a greeting.  It takes a list of strings as an argument.
-- If the list is empty, it prints a default greeting.  Otherwise, it prints a
-- personalized greeting using the strings in the list.
--
-- __Signature:__
--
-- @
-- printGreeting :: [String] -> String
-- @
-- __Example:__
--
-- @
-- module Main where
--
-- import Hello.World (printGreeting)
--
-- main :: IO ()
-- main = do
--     putStrLn $ printGreeting []
--     putStrLn $ printGreeting [\"John\", \"Doe\"]
-- @
-- __Output:__
--
-- @
-- "Hello World from Haskell !"
-- "Hello John Doe from Haskell !"
-- @
printGreeting :: [String] -> String
printGreeting [] = "Hello World from Haskell !"
printGreeting name = "Hello " ++ unwords name ++ " from Haskell !"

printDate :: IO String
printDate = do
    currentTime <- getCurrentTime >>= utcToLocalZonedTime
    let formattedDate = formatTime defaultTimeLocale "%B %d, %Y at %I:%M %p" currentTime
    return $ "Today is " ++ formattedDate

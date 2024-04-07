module CLI.Function.Details (printUserDetails) where

import System.IO (hFlush, stdout)

import Translator (translate)

import Hello.World (printDate)

getUserName :: [String] -> IO String
getUserName args =
    if null args
        then do
            putStr "Please enter your name : "
            hFlush stdout
            getLine
        else
            return (unwords args)

getUserLanguage :: IO String
getUserLanguage = do
    putStr "Please enter your language : "
    hFlush stdout
    getLine

printUserDetails :: [String] -> IO ()
printUserDetails args = do
    name <- getUserName args
    language <- getUserLanguage
    putStrLn $ translate language name
    putStrLn =<< printDate

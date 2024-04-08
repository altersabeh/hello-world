module CLI.Function.Details (printUserDetails) where

import System.IO (hFlush, stdout)
import Translator (translate)

import Hello.World (printDate)

-- |
-- = @getUserName@
--
-- The function @getUserName@ is used to get the user name.
--
-- __Arguments:__
--
-- * @args: [String]@ - The command line arguments.
--
-- __Return:__
--
-- * @IO String@ - The user name.
getUserName :: [String] -> IO String
getUserName args =
    if null args
        then do
            putStr "Please enter your name : "
            hFlush stdout
            getLine
        else
            return (unwords args)

-- |
-- = @getUserLanguage@
--
-- The function @getUserLanguage@ is used to get the user language.
--
-- __Return:__
--
-- * @IO String@ - The user language.
getUserLanguage :: IO String
getUserLanguage = do
    putStr "Please enter your language : "
    hFlush stdout
    getLine

-- |
-- = @printUserDetails@
--
-- The function @printUserDetails@ is used to print the user details.
--
-- __Arguments:__
--
-- * @args: [String]@ - The command line arguments.
--
-- __Return:__
--
-- * @IO ()@ - The user details.
printUserDetails :: [String] -> IO ()
printUserDetails args = do
    name <- getUserName args
    language <- getUserLanguage
    putStrLn $ translate language name
    putStrLn =<< printDate

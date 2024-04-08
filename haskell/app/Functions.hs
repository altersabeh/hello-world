module Functions (startProgram) where

import System.Environment (getArgs)
import System.IO (hFlush, stdout)

import CLI.Function.Banner (printBannerMessage)
import CLI.Function.Details (printUserDetails)
import CLI.Function.Greeter (printGoodbyeMessage, printWelcomeMessage)
import CLI.Function.Number (printNumberCalculations)
import CLI.Function.Random (printRandomNumbers)

-- |
-- = `waitForUser`
--
-- This function waits for the user to press enter before continuing.
--
-- __Example:__
--
-- @
-- import Functions (waitForUser)
-- waitForUser
-- @
--
-- __Output:__
--
-- @
-- "Press enter to continue ..."
-- @
waitForUser :: IO ()
waitForUser = do
    putStr "Press enter to continue ..."
    hFlush stdout
    _ <- getLine
    return ()

-- |
-- = `startProgram`
--
-- This function is the main entry point for the application. It prints the
-- welcome message, user details, number calculations, random numbers, goodbye
-- message, and banner message.
--
-- __Arguments:__
--
-- * `args` - The command line arguments.
startProgram :: IO ()
startProgram = do
    args <- getArgs
    putStrLn "==============================================="
    putStrLn ""
    printWelcomeMessage args
    printUserDetails args
    putStrLn ""
    printNumberCalculations
    putStrLn ""
    printRandomNumbers
    putStrLn ""
    waitForUser
    putStrLn ""
    printGoodbyeMessage args
    printBannerMessage
    putStrLn "==============================================="

module Functions (startProgram) where

import CLI.Function.Banner (printBannerMessage)
import CLI.Function.Details (printUserDetails)
import CLI.Function.Greeter (printGoodbyeMessage, printWelcomeMessage)
import CLI.Function.Number (printNumberCalculations)
import CLI.Function.Random (printRandomNumbers)
import System.Environment (getArgs)
import System.IO (hFlush, stdout)

waitForUser :: IO ()
waitForUser = do
    putStr "Press enter to continue ..."
    hFlush stdout
    _ <- getLine
    return ()

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

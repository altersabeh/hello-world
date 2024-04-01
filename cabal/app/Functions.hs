module Functions (startProgram) where

import Goodbye.World (printBanner, printGoodbye)
import Hello.World (printDate, printGreeting)
import Numbers.Lib (factorial, fibonacci, randomFactorial, randomFibonacci)
import System.Environment (getArgs)
import System.IO (hFlush, hPutStrLn, stderr, stdout)
import Translator (translate)

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

getUserNumber :: IO Integer
getUserNumber = do
  putStr "Enter a number : "
  hFlush stdout
  numberStr <- getLine
  return (read numberStr :: Integer)

printWelcomeMessage :: [String] -> IO ()
printWelcomeMessage args = do
  putStrLn ""
  putStrLn $ printGreeting args

printUserDetails :: [String] -> IO ()
printUserDetails args = do
  name <- getUserName args
  language <- getUserLanguage
  putStrLn $ translate language name
  putStrLn =<< printDate

printNumberCalculations :: IO ()
printNumberCalculations = do
  number <- getUserNumber
  putStrLn $ "Fib[" ++ show number ++ "] = " ++ show (fibonacci number)
  putStrLn $ "Fact[" ++ show number ++ "] = " ++ show (factorial number)

printRandomNumbers :: IO ()
printRandomNumbers = do
  putStrLn ""
  putStrLn "Some random numbers : "
  putStrLn =<< randomFibonacci
  putStrLn =<< randomFactorial

waitForUser :: IO ()
waitForUser = do
  putStrLn ""
  putStr "Press enter to continue ..."
  hFlush stdout
  _ <- getLine
  return ()

printGoodbyeMessage :: [String] -> IO ()
printGoodbyeMessage args = do
  putStrLn ""
  hPutStrLn stderr $ printGoodbye args
  putStrLn ""
  putStrLn printBanner

startProgram :: IO ()
startProgram = do
  args <- getArgs
  putStrLn "============================================="
  printWelcomeMessage args
  printUserDetails args
  printNumberCalculations
  printRandomNumbers
  waitForUser
  printGoodbyeMessage args
  putStrLn "============================================="

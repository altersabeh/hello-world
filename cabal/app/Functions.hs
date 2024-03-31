module Functions (startProgram) where

import Goodbye.World (printBanner, printGoodbye)
import Hello.World (printDate, printGreeting)
import Numbers.Lib (factorial, fibonacci, randomFactorial, randomFibonacci)
import System.Environment (getArgs)
import System.IO (hFlush, hPutStrLn, stderr, stdout)
import Translator (translate)

startProgram :: IO ()
startProgram = do
  args <- getArgs
  putStrLn "============================================="
  putStrLn ""
  putStrLn $ printGreeting args

  name <-
    if null args
      then do
        putStr "Please enter your name : "
        hFlush stdout
        getLine
      else
        return (unwords args)

  putStr "Please enter your language : "
  hFlush stdout
  language <- getLine

  putStrLn $ translate language name

  putStrLn =<< printDate

  putStrLn ""
  putStr "Enter a number : "
  hFlush stdout
  number <- getLine
  putStrLn $ "Fib[" ++ show number ++ "] = " ++ show (fibonacci (read number))
  putStrLn $ "Fact[" ++ show number ++ "] = " ++ show (factorial (read number))

  putStrLn ""
  putStrLn "Some random numbers : "
  putStrLn =<< randomFibonacci
  putStrLn =<< randomFactorial

  putStrLn ""
  putStr "Press enter to continue..."
  hFlush stdout
  _ <- getLine

  putStrLn ""
  hPutStrLn stderr $ printGoodbye args

  putStrLn ""
  putStrLn printBanner

  putStrLn "============================================="

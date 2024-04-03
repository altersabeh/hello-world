module CLI.Function.Number (printNumberCalculations) where

import Numbers.Utils (factorial, fibonacci)
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

getUserNumber :: IO Integer
getUserNumber = do
  putStr "Enter a number : "
  hFlush stdout
  maybeNum <- fmap readMaybe getLine
  case maybeNum of
    Just num -> return num
    Nothing -> return 0

printNumberCalculations :: IO ()
printNumberCalculations = do
  number <- getUserNumber
  putStrLn $ "Fib[" ++ show number ++ "] = " ++ show (fibonacci number)
  putStrLn $ "Fact[" ++ show number ++ "] = " ++ show (factorial number)

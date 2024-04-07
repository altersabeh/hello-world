module Main where

import Data.List (intercalate)
import Data.Maybe (fromJust, fromMaybe, isJust)
import Numeric.Natural (Natural)
import System.Environment (getArgs)
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

import Numbers.Utils.Operations.FactorUtils (factor, primeFactor)

getUserNumber :: IO Natural
getUserNumber = do
    putStr "Enter a number : "
    hFlush stdout
    fromMaybe 0 . readMaybe <$> getLine

getNumber :: IO Natural
getNumber = do
    args <- getArgs
    if not (null args) && isJust (readMaybe (head args) :: Maybe Natural)
        then return $ fromJust (readMaybe (head args) :: Maybe Natural)
        else getUserNumber

printFactor :: Natural -> IO ()
printFactor number = do
    let factors = factor number
    let factorsStr = intercalate ", " (map show factors)
    putStrLn $
        "Factor["
            ++ show number
            ++ "] = ["
            ++ factorsStr
            ++ "]"

printPrimeFactor :: Natural -> IO ()
printPrimeFactor number = do
    let primeFactors = primeFactor number
    let primeFactorsStr = intercalate ", " (map show primeFactors)
    putStrLn $
        "PFactor["
            ++ show number
            ++ "] = ["
            ++ primeFactorsStr
            ++ "]"

main :: IO ()
main = do
    number <- getNumber
    --  Find faster way to print factors
    printFactor number
    printPrimeFactor number

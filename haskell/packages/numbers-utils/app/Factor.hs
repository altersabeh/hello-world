module Main where

import Data.List (intercalate)
import Data.Maybe (fromJust, fromMaybe, isJust)
import Numeric.Natural (Natural)
import System.Environment (getArgs)
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

import Numbers.Utils.Operations.FactorUtils (factor, primeFactor)

-- |
-- = @getUserNumber@
--
-- The function @getUserNumber@ is used to get a number from the user.
--
-- __Return:__
--
-- * @Natural@ - The number entered by the user.
--
-- __Example:__
--
-- @
-- import Numbers.Utils.Operations.FactorUtils (getUserNumber)
-- number <- getUserNumber
-- putStrLn $ "Number : " ++ show number
-- @
--
-- __Output:__
--
-- @
-- "Enter a number : 5"
-- "Number : 5
-- @
getUserNumber :: IO Natural
getUserNumber = do
    putStr "Enter a number : "
    hFlush stdout
    fromMaybe 0 . readMaybe <$> getLine

-- |
-- = @getNumber@
--
-- The function @getNumber@ is used to get a number from the command line
-- arguments.
--
-- __Arguments:__
--
-- * @args: IO@ - The command line arguments.
--
-- __Return:__
--
-- * @Natural@ - The number entered by the user.
getNumber :: IO Natural
getNumber = do
    args <- getArgs
    if not (null args) && isJust (readMaybe (head args) :: Maybe Natural)
        then return $ fromJust (readMaybe (head args) :: Maybe Natural)
        else getUserNumber

-- |
-- = @printFactor@
--
-- The function @printFactor@ is used to print the factors of a number.
--
-- __Arguments:__
--
-- * @Natural@ - The number.
--
-- __Return:__
--
-- * @IO ()@ - The factors of the number.
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

-- |
-- = @printPrimeFactor@
--
-- The function @printPrimeFactor@ is used to print the prime factors of a
-- number.
--
-- __Arguments:__
--
-- * @Natural@ - The number.
--
-- __Return:__
--
-- * @IO ()@ - The prime factors of the number.
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
-- |
-- = @main@
--
-- The function @main@ is the entry point of the program. It gets a number from
-- the user and prints the factors and prime factors of the number.
main :: IO ()
main = do
    number <- getNumber
    --  Find faster way to print factors
    printFactor number
    printPrimeFactor number

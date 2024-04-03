{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Numbers.Utils (factorial, fibonacci)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

formatErrorMessage :: String -> String -> IO String
formatErrorMessage expected actual = do
  now <- getCurrentTime >>= utcToLocalZonedTime
  return $
    "\nTest run at: "
      ++ show now
      ++ "\nExpected : "
      ++ expected
      ++ "\nActual   : "
      ++ actual
      ++ "\n"

fibonacciTest :: TestTree
fibonacciTest = testCase "Fibonacci" $ do
  let n = 100
  let expectedOutput = read "354224848179261915075" :: Integer
  let actualOutput = fibonacci n
  errorMessage <- formatErrorMessage (show expectedOutput) (show actualOutput)
  assertBool errorMessage (expectedOutput == actualOutput)

factorialTest :: TestTree
factorialTest = testCase "Factorial" $ do
  let n = 75
  let expectedOutput =
        read
          "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000" ::
          Integer
  let actualOutput = factorial n
  errorMessage <- formatErrorMessage (show expectedOutput) (show actualOutput)
  assertBool errorMessage (expectedOutput == actualOutput)

tests :: TestTree
tests = testGroup "Numbers.Utils Tests" [fibonacciTest, factorialTest]

main :: IO ()
main = defaultMain tests

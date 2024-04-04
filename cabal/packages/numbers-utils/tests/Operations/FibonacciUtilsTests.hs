{-# LANGUAGE OverloadedStrings #-}

module Operations.FibonacciUtilsTests (fibonacciTest, fibonacciRandomTest) where

import Data.List (isInfixOf, isPrefixOf)

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree)
import Test.Tasty.HUnit (assertBool, testCase, assertEqual)

import Numbers.Utils.Operations.FibonacciUtils (fibonacci, fibonacciRandom)

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
    assertEqual errorMessage expectedOutput actualOutput

fibonacciRandomTest :: TestTree
fibonacciRandomTest = testCase "Fibonacci Random Test" $ do
    result <- fibonacciRandom
    let startString = "Fib["
    let errorMessage = "\nExpected: " ++ startString ++ "\n     Got: " ++ result ++ "\n"
    assertBool errorMessage (startString `isPrefixOf` result)
    assertBool errorMessage (" = " `isInfixOf` result)

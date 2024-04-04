{-# LANGUAGE OverloadedStrings #-}

module Operations.FibonacciUtilsTests (fibonacciTest, fibonacciRandomTest) where

import Data.List (isInfixOf, isPrefixOf)

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree)
import Test.Tasty.HUnit (Assertion, assertBool, testCase, (@?=))

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
    assertBool errorMessage (expectedOutput == actualOutput)

fibonacciRandomTest :: Assertion
fibonacciRandomTest = do
    result <- fibonacciRandom
    let start_string = "Fib["
    assertBool
        ("\nExpected: " ++ start_string ++ "\n     Got: " ++ result ++ "\n")
        (start_string `isPrefixOf` result)
    " = " `isInfixOf` result @?= True

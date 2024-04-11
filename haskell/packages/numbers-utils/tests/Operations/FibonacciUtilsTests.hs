{-# LANGUAGE OverloadedStrings #-}

module Operations.FibonacciUtilsTests (fibonacciTest, fibonacciRandomTest) where

import Data.List (isInfixOf, isPrefixOf)

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree)
import Test.Tasty.HUnit (assertBool, assertEqual, testCase)

import Numbers.Utils.Operations.FibonacciUtils (fibonacci, fibonacciRandom)

-- |
-- # @formatErrorMessage@
--
-- The function @formatErrorMessage@ is used to format the error message.
--
-- __Arguments:__
--
-- * @expected: String@ - The expected output.
-- * @actual: String@ - The actual output.
--
-- __Return:__
--
-- * @IO String@ - The formatted error message.
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

-- |
-- # @fibonacciTest@
--
-- The function @fibonacciTest@ is used to test the @fibonacci@ function.
fibonacciTest :: TestTree
fibonacciTest = testCase "Fibonacci" $ do
    let num = 100
    let expectedOutput = read "354224848179261915075" :: Integer
    let actualOutput = fibonacci num
    errorMessage <- formatErrorMessage (show expectedOutput) (show actualOutput)
    assertEqual errorMessage expectedOutput actualOutput

-- |
-- # @fibonacciRandomTest@
--
-- The function @fibonacciRandomTest@ is used to test the @fibonacciRandom@
fibonacciRandomTest :: TestTree
fibonacciRandomTest = testCase "Fibonacci Random Test" $ do
    result <- fibonacciRandom
    let startString = "Fib["
    let errorMessage = "\nExpected: " ++ startString ++ "\n     Got: " ++ result ++ "\n"
    assertBool errorMessage (startString `isPrefixOf` result)
    assertBool errorMessage (" = " `isInfixOf` result)

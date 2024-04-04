{-# LANGUAGE OverloadedStrings #-}

module Operations.FactorialUtilsTests (factorialTest, factorialRandomTest) where

import Data.List (isInfixOf, isPrefixOf)

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree)
import Test.Tasty.HUnit (Assertion, assertBool, testCase, (@?=))

import Numbers.Utils.Operations.FactorialUtils (factorial, factorialRandom)

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

factorialTest :: TestTree
factorialTest = testCase "Factorial" $ do
    let n = 75
    let expectedOutput =
            read
                "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000"
                :: Integer
    let actualOutput = factorial n
    errorMessage <- formatErrorMessage (show expectedOutput) (show actualOutput)
    assertBool errorMessage (expectedOutput == actualOutput)

factorialRandomTest :: Assertion
factorialRandomTest = do
    result <- factorialRandom
    let start_string = "Fact"
    assertBool
        ("\nExpected: " ++ start_string ++ "\n     Got: " ++ result ++ "\n")
        (start_string `isPrefixOf` result)
    " = " `isInfixOf` result @?= True

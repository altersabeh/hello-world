{-# LANGUAGE OverloadedStrings #-}

module Operations.FactorialUtilsTests (factorialTest, factorialRandomTest) where

import Data.List (isInfixOf, isPrefixOf)

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree)
import Test.Tasty.HUnit (assertBool, testCase, assertEqual)

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
    assertEqual errorMessage expectedOutput actualOutput

factorialRandomTest :: TestTree
factorialRandomTest = testCase "Factorial Random Test" $ do
    result <- factorialRandom
    let startString = "Fact["
    let errorMessage = "\nExpected: " ++ startString ++ "\n     Got: " ++ result ++ "\n"
    assertBool errorMessage (startString `isPrefixOf` result)
    assertBool errorMessage (" = " `isInfixOf` result)

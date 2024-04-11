{-# LANGUAGE OverloadedStrings #-}

module Operations.FactorialUtilsTests (factorialTest, factorialRandomTest) where

import Data.List (isInfixOf, isPrefixOf)

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree)
import Test.Tasty.HUnit (assertBool, assertEqual, testCase)

import Numbers.Utils.Operations.FactorialUtils (factorial, factorialRandom)

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
-- # @factorialTest@
--
-- The function @factorialTest@ is used to test the @factorial@ function.
factorialTest :: TestTree
factorialTest = testCase "Factorial" $ do
    let num = 75
    let expectedOutput =
            read
                "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000"
                :: Integer
    let actualOutput = factorial num
    errorMessage <- formatErrorMessage (show expectedOutput) (show actualOutput)
    assertEqual errorMessage expectedOutput actualOutput

-- |
-- # @factorialRandomTest@
--
-- The function @factorialRandomTest@ is used to test the @factorialRandom@
-- function.
factorialRandomTest :: TestTree
factorialRandomTest = testCase "Factorial Random Test" $ do
    result <- factorialRandom
    let startString = "Fact["
    let errorMessage = "\nExpected: " ++ startString ++ "\n     Got: " ++ result ++ "\n"
    assertBool errorMessage (startString `isPrefixOf` result)
    assertBool errorMessage (" = " `isInfixOf` result)

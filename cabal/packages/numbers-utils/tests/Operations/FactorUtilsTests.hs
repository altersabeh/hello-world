module Operations.FactorUtilsTests
    ( factorTest
    , factorRandomTest
    , primeFactorTest
    , primeFactorRandomTest
    ) where

import Data.List (isInfixOf, isPrefixOf)

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree)
import Test.Tasty.HUnit (assertBool, assertEqual, testCase)

import Numbers.Utils.Operations.FactorUtils
    ( factor
    , factorRandom
    , primeFactor
    , primeFactorRandom
    )

formatErrorMessage :: Show a => [a] -> [a] -> IO String
formatErrorMessage expected actual = do
    now <- getCurrentTime >>= utcToLocalZonedTime
    return $
        "\nTest run at: "
            ++ show now
            ++ "\nExpected : "
            ++ show expected
            ++ "\nActual   : "
            ++ show actual
            ++ "\n"

factorTest :: TestTree
factorTest = testCase "Factor Test" $ do
    let number = 60
    let expectedOutput = [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60]
    let actualOutput = factor number
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertEqual errorMessage expectedOutput actualOutput

factorRandomTest :: TestTree
factorRandomTest = testCase "Factor Random Test" $ do
    result <- factorRandom
    let startString = "Factor["
    let errorMessage = "\nExpected: " ++ startString ++ "\n     Got: " ++ result ++ "\n"
    assertBool errorMessage (startString `isPrefixOf` result)
    assertBool errorMessage (" = " `isInfixOf` result)

primeFactorTest :: TestTree
primeFactorTest = testCase "Prime Factor Test" $ do
    let number = 60
    let expectedOutput = [2, 2, 3, 5]
    let actualOutput = primeFactor number
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertEqual errorMessage expectedOutput actualOutput

primeFactorRandomTest :: TestTree
primeFactorRandomTest = testCase "Prime Factor Random Test" $ do
    result <- primeFactorRandom
    let startString = "PFactor["
    let errorMessage = "\nExpected: " ++ startString ++ "\n     Got: " ++ result ++ "\n"
    assertBool errorMessage (startString `isPrefixOf` result)
    assertBool errorMessage (" = " `isInfixOf` result)

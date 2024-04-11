{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.Format (defaultTimeLocale, formatTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

import Hello.World (greeting, printDate, printGreeting)

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
-- # @printGreetingsWithoutNameTest@
--
-- The function @printGreetingsWithoutNameTest@ is used to test the
-- @printGreeting@ function without args.
printGreetingWithoutNameTest :: TestTree
printGreetingWithoutNameTest = testCase "Print Greeting without Name Test" $ do
    let args = []
    let expectedOutput = "Hello World from Haskell !"
    let actualOutput = printGreeting args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

-- |
-- # @printGreetingWithNameTest@
--
-- The function @printGreetingWithNameTest@ is used to test the @printGreeting@
-- function with args.
printGreetingWithNameTest :: TestTree
printGreetingWithNameTest = testCase "Print Greeting with Name Test" $ do
    let args = ["Alter", "Sabeh"]
    let expectedOutput = "Hello Alter Sabeh from Haskell !"
    let actualOutput = printGreeting args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

-- |
-- # @printDateTest@
--
-- The function @printDateTest@ is used to test the @printDate@ function.
printDateTest :: TestTree
printDateTest = testCase "Print Date Test" $ do
    now <- getCurrentTime >>= utcToLocalZonedTime
    let formattedDate = formatTime defaultTimeLocale "%B %d, %Y at %I:%M %p" now
    let expectedOutput = "Today is " ++ formattedDate
    actualOutput <- printDate
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

-- |
-- # @printGreetTest@
--
-- The function @printGreetTest@ is used to test the @greeting@ function.
printGreetTest :: TestTree
printGreetTest = testCase "Print Greet Test" $ do
    let expectedOutput = "Hello, Haskell's Here !"
    let actualOutput = greeting
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

-- |
-- # @tests@
--
-- The @tests@ function contains the tests for the @Hello.World@ module.
tests :: TestTree
tests =
    testGroup
        "Hello.World Tests"
        [ printGreetTest
        , printGreetingWithoutNameTest
        , printGreetingWithNameTest
        , printDateTest
        ]

-- |
-- # @main@
--
-- The @main@ function is used to run the tests.
main :: IO ()
main = defaultMain tests

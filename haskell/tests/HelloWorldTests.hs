{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.Format (defaultTimeLocale, formatTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

import Hello.World (greeting, printDate, printGreeting)

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

printGreetingWithoutNameTest :: TestTree
printGreetingWithoutNameTest = testCase "Print Greeting without Name Test" $ do
    let args = []
    let expectedOutput = "Hello World from Haskell !"
    let actualOutput = printGreeting args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

printGreetingWithNameTest :: TestTree
printGreetingWithNameTest = testCase "Print Greeting with Name Test" $ do
    let args = ["Alter", "Sabeh"]
    let expectedOutput = "Hello Alter Sabeh from Haskell !"
    let actualOutput = printGreeting args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

printDateTest :: TestTree
printDateTest = testCase "Print Date Test" $ do
    now <- getCurrentTime >>= utcToLocalZonedTime
    let formattedDate = formatTime defaultTimeLocale "%B %d, %Y at %I:%M %p" now
    let expectedOutput = "Today is " ++ formattedDate
    actualOutput <- printDate
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

printGreetTest :: TestTree
printGreetTest = testCase "Print Greet Test" $ do
    let expectedOutput = "Hello, Haskell's Here !"
    let actualOutput = greeting
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

tests :: TestTree
tests =
    testGroup
        "Hello.World Tests"
        [ printGreetTest
        , printGreetingWithoutNameTest
        , printGreetingWithNameTest
        , printDateTest
        ]

main :: IO ()
main = defaultMain tests

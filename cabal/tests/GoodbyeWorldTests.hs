{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

import Goodbye.World (printBanner, printGoodbye)

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

printGoodbyeWithoutNameTest :: TestTree
printGoodbyeWithoutNameTest = testCase "Print Goodbye without Name Test" $ do
    let args = []
    let expectedOutput = "Goodbye World from Cabal !"
    let actualOutput = printGoodbye args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

printGoodbyeWithNameTest :: TestTree
printGoodbyeWithNameTest = testCase "Print Goodbye with Name Test" $ do
    let args = ["Alter", "Sabeh"]
    let expectedOutput = "Goodbye Alter Sabeh from Cabal !"
    let actualOutput = printGoodbye args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

printBannerTest :: TestTree
printBannerTest = testCase "Print Banner Test" $ do
    let expectedOutput =
            unlines
                [ "                                            "
                , "    ▄████▄  ▄▄▄      ▄▄▄▄   ▄▄▄      ██▓    "
                , "   ▒██▀ ▀█ ▒████▄   ▓█████▄▒████▄   ▓██▒    "
                , "   ▒▓█    ▄▒██  ▀█▄ ▒██▒ ▄█▒██  ▀█▄ ▒██░    "
                , "   ▒▓▓▄ ▄██░██▄▄▄▄██▒██░█▀ ░██▄▄▄▄██▒██░    "
                , "   ▒ ▓███▀ ░▓█   ▓██░▓█  ▀█▓▓█   ▓██░██████▒"
                , "   ░ ░▒ ▒  ░▒▒   ▓▒█░▒▓███▀▒▒▒   ▓▒█░ ▒░▓  ░"
                , "     ░  ▒    ▒   ▒▒ ▒░▒   ░  ▒   ▒▒ ░ ░ ▒  ░"
                , "   ░         ░   ▒   ░    ░  ░   ▒    ░ ░   "
                , "   ░ ░           ░  ░░           ░  ░   ░  ░"
                , "   ░                      ░                 "
                ]
    let actualOutput = printBanner
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

tests :: TestTree
tests =
    testGroup
        "Goodbye.World Tests"
        [printGoodbyeWithoutNameTest, printGoodbyeWithNameTest, printBannerTest]

main :: IO ()
main = defaultMain tests

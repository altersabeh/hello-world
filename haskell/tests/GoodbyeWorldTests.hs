{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

import Goodbye.World (printBanner, printGoodbye)

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
-- # @printGoodbyeWithoutNameTest@
--
-- The function @printGoodbyeWithoutNameTest@ is used to test the @printGoodbye@
-- function without args.
printGoodbyeWithoutNameTest :: TestTree
printGoodbyeWithoutNameTest = testCase "Print Goodbye without Name Test" $ do
    let args = []
    let expectedOutput = "Goodbye World from Haskell !"
    let actualOutput = printGoodbye args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

-- |
-- # @printGoodbyeWithNameTest@
--
-- The function @printGoodbyeWithNameTest@ is used to test the @printGoodbye@
-- function with args.
printGoodbyeWithNameTest :: TestTree
printGoodbyeWithNameTest = testCase "Print Goodbye with Name Test" $ do
    let args = ["Alter", "Sabeh"]
    let expectedOutput = "Goodbye Alter Sabeh from Haskell !"
    let actualOutput = printGoodbye args
    errorMessage <- formatErrorMessage expectedOutput actualOutput
    assertBool errorMessage (expectedOutput == actualOutput)

-- |
-- # @printBannerTest@
--
-- The function @printBannerTest@ is used to test the @printBanner@ function.
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

-- |
-- # @tests@
--
-- The @tests@ function contains the tests for the @Goodbye.World@ package.
tests :: TestTree
tests =
    testGroup
        "Goodbye.World Tests"
        [printGoodbyeWithoutNameTest, printGoodbyeWithNameTest, printBannerTest]

-- |
-- # @main@
--
-- The @main@ function is the entrypoint of the test
main :: IO ()
main = defaultMain tests

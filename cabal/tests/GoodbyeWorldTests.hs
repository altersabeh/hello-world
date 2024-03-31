{-# LANGUAGE OverloadedStrings #-}

module Main where

import Goodbye.World (printBanner, printGoodbye)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@=?))

printGoodbyeWithoutNameTest :: TestTree
printGoodbyeWithoutNameTest = testCase "Print Goodbye without Name Test" $ do
  let args = []
  let expectedOutput = "Goodbye World from Cabal!"
  let actualOutput = printGoodbye args
  expectedOutput @=? actualOutput

printGoodbyeWithNameTest :: TestTree
printGoodbyeWithNameTest = testCase "Print Goodbye with Name Test" $ do
  let args = ["Alter", "Sabeh"]
  let expectedOutput = "Goodbye Alter Sabeh from Cabal!"
  let actualOutput = printGoodbye args
  expectedOutput @=? actualOutput

printBannerTest :: TestTree
printBannerTest = testCase "Print Banner Test" $ do
  let expectedOutput =
        unlines
          [ " ▄████▄   ▄▄▄       ▄▄▄▄    ▄▄▄       ██▓    ",
            "▒██▀ ▀█  ▒████▄    ▓█████▄ ▒████▄    ▓██▒    ",
            "▒▓█    ▄ ▒██  ▀█▄  ▒██▒ ▄██▒██  ▀█▄  ▒██░    ",
            "▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██░█▀  ░██▄▄▄▄██ ▒██░    ",
            "▒ ▓███▀ ░ ▓█   ▓██▒░▓█  ▀█▓ ▓█   ▓██▒░██████▒",
            "░ ░▒ ▒  ░ ▒▒   ▓▒█░░▒▓███▀▒ ▒▒   ▓▒█░░ ▒░▓  ░",
            "  ░  ▒     ▒   ▒▒ ░▒░▒   ░   ▒   ▒▒ ░░ ░ ▒  ░",
            "░          ░   ▒    ░    ░   ░   ▒     ░ ░   ",
            "░ ░            ░  ░ ░            ░  ░    ░  ░",
            "░                        ░                   "
          ]
  let actualOutput = printBanner
  expectedOutput @=? actualOutput

tests :: TestTree
tests = testGroup "Goodbye.World Tests" [printGoodbyeWithoutNameTest, printGoodbyeWithNameTest, printBannerTest]

main :: IO ()
main = defaultMain tests

{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.Format (defaultTimeLocale, formatTime)
import Hello.World (printDate, printGreeting)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@=?))

printGreetingWithoutNameTest :: TestTree
printGreetingWithoutNameTest = testCase "Print Greeting without Name Test" $ do
  let args = []
  let expectedOutput = "Hello World from Cabal !"
  let actualOutput = printGreeting args
  expectedOutput @=? actualOutput

printGreetingWithNameTest :: TestTree
printGreetingWithNameTest = testCase "Print Greeting with Name Test" $ do
  let args = ["Alter", "Sabeh"]
  let expectedOutput = "Hello Alter Sabeh from Cabal !"
  let actualOutput = printGreeting args
  expectedOutput @=? actualOutput

printDateTest :: TestTree
printDateTest = testCase "Print Date Test" $ do
  now <- getCurrentTime
  let formattedDate = formatTime defaultTimeLocale "%B %e, %Y at %I:%M %p" now
  let expectedOutput = "Today is " ++ formattedDate
  actualOutput <- printDate
  expectedOutput @=? actualOutput

tests :: TestTree
tests = testGroup "Hello.World Tests" [printGreetingWithoutNameTest, printGreetingWithNameTest, printDateTest]

main :: IO ()
main = defaultMain tests

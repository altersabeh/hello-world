{-# LANGUAGE OverloadedStrings #-}

module Main where

import Numbers.Lib (factorial, fibonacci)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@=?))

fibonacciTest :: TestTree
fibonacciTest = testCase "Fibonacci" $ do
  let n = 100
  let expectedOutput = read "354224848179261915075" :: Integer
  let actualOutput = fibonacci n
  expectedOutput @=? actualOutput

factorialTest :: TestTree
factorialTest = testCase "Factorial" $ do
  let n = 75
  let expectedOutput = read "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000" :: Integer
  let actualOutput = factorial n
  expectedOutput @=? actualOutput

tests :: TestTree
tests = testGroup "Numbers.Lib Tests" [fibonacciTest, factorialTest]

main :: IO ()
main = defaultMain tests

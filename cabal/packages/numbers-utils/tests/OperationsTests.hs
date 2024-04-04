{-# LANGUAGE OverloadedStrings #-}

module Main where

import Operations.FactorialUtilsTests (factorialRandomTest, factorialTest)
import Operations.FibonacciUtilsTests (fibonacciRandomTest, fibonacciTest)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase)

tests :: TestTree
tests =
    testGroup
        "Operations Tests"
        [ fibonacciTest
        , testCase "Fibonacci Random" fibonacciRandomTest
        , factorialTest
        , testCase "Factorial Random" factorialRandomTest
        ]

main :: IO ()
main = defaultMain tests

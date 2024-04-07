{-# LANGUAGE OverloadedStrings #-}

module Main where

import Test.Tasty (TestTree, defaultMain, testGroup)

import Operations.FactorUtilsTests
    ( factorRandomTest
    , factorTest
    , primeFactorRandomTest
    , primeFactorTest
    )
import Operations.FactorialUtilsTests (factorialRandomTest, factorialTest)
import Operations.FibonacciUtilsTests (fibonacciRandomTest, fibonacciTest)

tests :: TestTree
tests =
    testGroup
        "Operations Tests"
        [ fibonacciTest
        , fibonacciRandomTest
        , factorialTest
        , factorialRandomTest
        , factorTest
        , factorRandomTest
        , primeFactorTest
        , primeFactorRandomTest
        ]

main :: IO ()
main = defaultMain tests

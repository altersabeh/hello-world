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

-- |
-- = @test@
--
-- This function contains the tests to be run
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

-- |
-- = @main@
--
-- The @main@ function is the entrypoint of the program
main :: IO ()
main = defaultMain tests

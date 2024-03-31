{-# LANGUAGE OverloadedStrings #-}

module Main where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))
import Translator (translate)

translateTests :: TestTree
translateTests =
  let name = "Alter Sabeh"
      languages =
        [ ("English", "Hi Alter Sabeh, greetings from Cabal !"),
          ("French", "Bonjour Alter Sabeh, salutations de Cabal !"),
          ("Spanish", "Hola Alter Sabeh, saludos desde Cabal !"),
          ("German", "Hallo Alter Sabeh, grüße aus Cabal !"),
          ("Italian", "Ciao Alter Sabeh, saluti da Cabal !"),
          ("Dutch", "Hallo Alter Sabeh, groeten uit Cabal !"),
          ("Unknown", "Hi Alter Sabeh, greetings from Cabal !")
        ]
   in testGroup "Language" $
        map
          ( \(lang, expected) ->
              testCase lang $ translate lang name @?= expected
          )
          languages

tests :: TestTree
tests = testGroup "Translator Tests" [translateTests]

main :: IO ()
main = defaultMain tests

{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

import Translator (translate)

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

translateTests :: TestTree
translateTests =
    let name = "Alter Sabeh"
        languages =
            [ ("English", "Hi Alter Sabeh, greetings from Cabal !")
            , ("French", "Bonjour Alter Sabeh, salutations de Cabal !")
            , ("Spanish", "Hola Alter Sabeh, saludos desde Cabal !")
            , ("German", "Hallo Alter Sabeh, grüße aus Cabal !")
            , ("Italian", "Ciao Alter Sabeh, saluti da Cabal !")
            , ("Dutch", "Hallo Alter Sabeh, groeten uit Cabal !")
            , ("Unknown", "Hi Alter Sabeh, greetings from Cabal !")
            ]
     in testGroup "Language" $
            map
                ( \(lang, expectedOutput) ->
                    testCase lang $ do
                        let actualOutput = translate lang name
                        errorMessage <- formatErrorMessage expectedOutput actualOutput
                        assertBool errorMessage (expectedOutput == actualOutput)
                )
                languages

tests :: TestTree
tests = testGroup "Translator Tests" [translateTests]

main :: IO ()
main = defaultMain tests

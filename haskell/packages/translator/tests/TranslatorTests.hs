{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Time.Clock (getCurrentTime)
import Data.Time.LocalTime (utcToLocalZonedTime)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

import Translator (translate)

-- |
-- = @formatErrorMessage@
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
-- = @translateTests@
--
-- The @translateTests@ function contains the tests for the @translate@
-- function.
translateTests :: TestTree
translateTests =
    let name = "Alter Sabeh"
        languages =
            [ ("English", "Hi Alter Sabeh, greetings from Haskell !")
            , ("French", "Bonjour Alter Sabeh, salutations de Haskell !")
            , ("Spanish", "Hola Alter Sabeh, saludos desde Haskell !")
            , ("German", "Hallo Alter Sabeh, grüße aus Haskell !")
            , ("Italian", "Ciao Alter Sabeh, saluti da Haskell !")
            , ("Dutch", "Hallo Alter Sabeh, groeten uit Haskell !")
            , ("Unknown", "Hi Alter Sabeh, greetings from Haskell !")
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

-- |
-- = @tests@
--
-- This function contains the tests to be run.
tests :: TestTree
tests = testGroup "Translator Tests" [translateTests]

-- |
-- = @main@
--
-- The @main@ function is the entrypoint of the program.
main :: IO ()
main = defaultMain tests

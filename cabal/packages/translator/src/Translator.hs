module Translator (translate) where

import Data.Map (Map)
import Data.Map qualified as Map

helloTranslations :: Map String String
helloTranslations =
  Map.fromList
    [ ("French", "Bonjour"),
      ("Spanish", "Hola"),
      ("German", "Hallo"),
      ("Italian", "Ciao"),
      ("Dutch", "Hallo")
    ]

greetingsFromTranslations :: Map String String
greetingsFromTranslations =
  Map.fromList
    [ ("French", "salutations de"),
      ("Spanish", "saludos desde"),
      ("German", "grüße aus"),
      ("Italian", "saluti da"),
      ("Dutch", "groeten uit")
    ]

translate :: String -> String -> String
translate language name =
  let greeting = Map.lookup language helloTranslations
      greetingsFrom = Map.lookup language greetingsFromTranslations
   in case (greeting, greetingsFrom) of
        (Just g, Just gf) -> g ++ " " ++ name ++ ", " ++ gf ++ " Cabal !"
        _ -> "Hi " ++ name ++ ", greetings from Cabal !"

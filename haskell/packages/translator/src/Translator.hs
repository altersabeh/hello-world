module Translator (translate) where

import Data.Map (Map)
import Data.Map qualified as Map

-- |
-- = @helloTranslations@
--
-- The @helloTranslations@ map contains the translations of "Hello" in different
-- languages.
helloTranslations :: Map String String
helloTranslations =
    Map.fromList
        [ ("French", "Bonjour")
        , ("Spanish", "Hola")
        , ("German", "Hallo")
        , ("Italian", "Ciao")
        , ("Dutch", "Hallo")
        ]

-- |
-- = @greetingsFromTranslations@
--
-- The @greetingsFromTranslations@ map contains the translations of "Greetings
-- from" in different languages.
greetingsFromTranslations :: Map String String
greetingsFromTranslations =
    Map.fromList
        [ ("French", "salutations de")
        , ("Spanish", "saludos desde")
        , ("German", "grüße aus")
        , ("Italian", "saluti da")
        , ("Dutch", "groeten uit")
        ]

-- |
-- = @translate@
--
-- The function @translate@ is used to translate the greeting message.
--
-- __Arguments:__
--
-- * @language: String@ - The language in which the greeting message should be
-- translated.
-- * @name: String@ - The name of the person to whom the greeting message is
-- addressed.
--
-- __Return:__
--
-- * @String@ - The translated greeting message.
--
-- __Example:__
--
-- @
-- import Translator (translate)
-- let language = "French"
-- let name = "Alice"
-- putStrLn $ translate language name
-- @
--
-- __Output:__
--
-- @
-- "Bonjour Alice, salutations de Haskell !"
-- @
translate :: String -> String -> String
translate language name =
    let greeting = Map.lookup language helloTranslations
        greetingsFrom = Map.lookup language greetingsFromTranslations
     in case (greeting, greetingsFrom) of
            (Just g, Just gf) -> g ++ " " ++ name ++ ", " ++ gf ++ " Haskell !"
            _ -> "Hi " ++ name ++ ", greetings from Haskell !"

module Goodbye.World (printGoodbye, printBanner) where

-- |
-- # @printGoodbye@
--
-- The function @printGoodbye@ is used to print the goodbye message.
--
-- __Arguments:__
--
-- * @name: [String]@ - The name of the user.
--
-- __Return:__
--
-- * @String@ - The goodbye message.
--
-- __Example:__
--
-- @
-- import Goodbye.World (printGoodbye)
-- putStrLn $ printGoodbye []
-- putStrLn $ printGoodbye ["John", "Doe"]
-- @
--
-- __Output:__
--
-- @
-- "Goodbye World from Haskell !"
-- "Goodbye John Doe from Haskell !"
-- @
printGoodbye :: [String] -> String
printGoodbye [] = "Goodbye World from Haskell !"
printGoodbye name = "Goodbye " ++ unwords name ++ " from Haskell !"

-- |
-- # @printBanner@
--
-- The function @printBanner@ is used to print the banner message.
--
-- __Return:__
--
-- * @String@ - The banner message.
printBanner :: String
printBanner =
    unlines
        [ "                                            "
        , "    ▄████▄  ▄▄▄      ▄▄▄▄   ▄▄▄      ██▓    "
        , "   ▒██▀ ▀█ ▒████▄   ▓█████▄▒████▄   ▓██▒    "
        , "   ▒▓█    ▄▒██  ▀█▄ ▒██▒ ▄█▒██  ▀█▄ ▒██░    "
        , "   ▒▓▓▄ ▄██░██▄▄▄▄██▒██░█▀ ░██▄▄▄▄██▒██░    "
        , "   ▒ ▓███▀ ░▓█   ▓██░▓█  ▀█▓▓█   ▓██░██████▒"
        , "   ░ ░▒ ▒  ░▒▒   ▓▒█░▒▓███▀▒▒▒   ▓▒█░ ▒░▓  ░"
        , "     ░  ▒    ▒   ▒▒ ▒░▒   ░  ▒   ▒▒ ░ ░ ▒  ░"
        , "   ░         ░   ▒   ░    ░  ░   ▒    ░ ░   "
        , "   ░ ░           ░  ░░           ░  ░   ░  ░"
        , "   ░                      ░                 "
        ]

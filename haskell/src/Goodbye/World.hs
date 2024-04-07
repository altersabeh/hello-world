module Goodbye.World (printGoodbye, printBanner) where

printGoodbye :: [String] -> String
printGoodbye [] = "Goodbye World from Haskell !"
printGoodbye name = "Goodbye " ++ unwords name ++ " from Haskell !"

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

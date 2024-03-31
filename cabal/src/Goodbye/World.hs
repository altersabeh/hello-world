module Goodbye.World (printGoodbye, printBanner) where

printGoodbye :: [String] -> String
printGoodbye [] = "Goodbye World from Cabal!"
printGoodbye name = "Goodbye " ++ unwords name ++ " from Cabal!"

printBanner :: String
printBanner =
  unlines
    [ " ▄████▄   ▄▄▄       ▄▄▄▄    ▄▄▄       ██▓    ",
      "▒██▀ ▀█  ▒████▄    ▓█████▄ ▒████▄    ▓██▒    ",
      "▒▓█    ▄ ▒██  ▀█▄  ▒██▒ ▄██▒██  ▀█▄  ▒██░    ",
      "▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██░█▀  ░██▄▄▄▄██ ▒██░    ",
      "▒ ▓███▀ ░ ▓█   ▓██▒░▓█  ▀█▓ ▓█   ▓██▒░██████▒",
      "░ ░▒ ▒  ░ ▒▒   ▓▒█░░▒▓███▀▒ ▒▒   ▓▒█░░ ▒░▓  ░",
      "  ░  ▒     ▒   ▒▒ ░▒░▒   ░   ▒   ▒▒ ░░ ░ ▒  ░",
      "░          ░   ▒    ░    ░   ░   ▒     ░ ░   ",
      "░ ░            ░  ░ ░            ░  ░    ░  ░",
      "░                        ░                   "
    ]

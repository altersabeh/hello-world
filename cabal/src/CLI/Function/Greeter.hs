module CLI.Function.Greeter (printWelcomeMessage, printGoodbyeMessage) where

import Goodbye.World (printGoodbye)
import Hello.World (printGreeting)
import System.IO (hPutStrLn, stderr)

printWelcomeMessage :: [String] -> IO ()
printWelcomeMessage args = do
    putStrLn $ printGreeting args

printGoodbyeMessage :: [String] -> IO ()
printGoodbyeMessage args = do
    hPutStrLn stderr $ printGoodbye args

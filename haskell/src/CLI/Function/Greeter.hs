module CLI.Function.Greeter (printWelcomeMessage, printGoodbyeMessage) where

import System.IO (hPutStrLn, stderr)

import Goodbye.World (printGoodbye)
import Hello.World (printGreeting)

-- |
-- = @printWelcomeMessage@
--
-- The function @printWelcomeMessage@ is used to print the welcome message.
--
-- __Arguments:__
--
-- * @args: [String]@ - The command line arguments.
--
-- __Return:__
--
-- * @IO ()@ - The welcome message.
printWelcomeMessage :: [String] -> IO ()
printWelcomeMessage args = do
    putStrLn $ printGreeting args

-- |
-- = @printGoodbyeMessage@
--
-- The function @printGoodbyeMessage@ is used to print the goodbye message.
--
-- __Arguments:__
--
-- * @args: [String]@ - The command line arguments.
--
-- __Return:__
--
-- * @IO ()@ - The goodbye message.
printGoodbyeMessage :: [String] -> IO ()
printGoodbyeMessage args = do
    hPutStrLn stderr $ printGoodbye args

-- A small numbers guessing game written in Haskell.

--Imports
import System.IO
import Data.Char

-- Main Function (Programm Start)
main = do
  -- Welcome msg
  putStrLn("Welcome to Guessed!\n\nI've choosen a Number between 0 and 9. Can you guess it ?\n\n\n")
  -- User Input
  guess <- getLine

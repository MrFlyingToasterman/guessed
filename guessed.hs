-- A small numbers guessing game written in Haskell.

--Imports
import System.IO
import Data.Char
import System.Random

-- Main Function (Programm Start)
main = do
  -- Welcome msg
  putStrLn("Welcome to Guessed!\n\nI've choosen a Number between 1 and 10. Can you guess it ?\n\n\n")
  -- Create a Random Int
  genNumber <- getStdGen
  let ( randNumber , newGen ) = randomR (1,10) genNumber :: (Int,StdGen)
  -- Debug: Print Number
  print randNumber
  -- User Input
  putStrLn("Your guess: ")
  guess <- getLine
  -- End expression
  putStrLn("Ready.")

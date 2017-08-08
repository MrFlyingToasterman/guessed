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
  userGuess <- getLine
  userGuessInt <- getInt userGuess
  if userGuessInt == randNumber
    then putStrLn("Your guess " ++ userGuess ++ " was right!")
    else putStrLn("Sorry, thats not was i thought")
  -- End expression
  putStrLn("Ready.")


-- Function to convert [Char] to Int
getInt n
    | n == "1" = return 1
    | n == "2" = return 2
    | n == "3" = return 3
    | n == "4" = return 4
    | n == "5" = return 5
    | n == "6" = return 6
    | n == "7" = return 7
    | n == "8" = return 8
    | n == "9" = return 9
    | n == "10" = return 10

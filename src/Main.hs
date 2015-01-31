module Main where

import CSVParser

main :: IO ()
main = do
    summed <- getAtBatsSum "batting.csv"
    putStrLn $ "Total atBats was: " ++ (show summed)
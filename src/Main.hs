module Main where

import qualified Data.ByteString.Lazy as BL

import Data.Csv.Streaming
import qualified Data.Foldable as F

-- type alias for data
type BaseballStats = (BL.ByteString, Int, BL.ByteString, Int)

baseballStats :: BL.ByteString -> Records BaseballStats
baseballStats = decode NoHeader

fourth :: (a, b, c, d) -> d
fourth (_, _, _, d) = d

main :: IO ()
main = do 
        csvData <- BL.readFile "batting.csv"
        let summed = F.foldr summer 0 (baseballStats csvData)
        putStrLn $ "Total atBats was: " ++ (show summed)
        where summer = (+) . fourth

{-# LANGUAGE OverloadedStrings #-}

import qualified Data.ByteString.Lazy as BL
import Data.Csv

type Activity = String
type Cost = Int

-- Define a budget record
data Budget = Budget { activity :: Activity, cost :: Cost } deriving Show

instance FromNamedRecord Budget where
    parseNamedRecord r = Budget <$> r .: "Activity" <*> r .: "Cost"

-- Parse CSV file
main :: IO ()
main = do
    csvData <- BL.readFile "budget_data.csv"
    case decodeByName csvData of
        Left err -> putStrLn err
        Right (_, budgets) -> print (sum $ map cost budgets)

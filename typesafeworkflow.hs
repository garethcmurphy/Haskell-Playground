data Target = GLP1 | SGLT2 | InsulinReceptor deriving (Show)
data Drug = Trulicity | Jardiance deriving (Show)

relevantDrugs :: Target -> [Drug]
relevantDrugs GLP1 = [Trulicity]
relevantDrugs SGLT2 = [Jardiance]
relevantDrugs _    = []

main :: IO ()
main = do
    print $ relevantDrugs GLP1  -- Output: [Trulicity]

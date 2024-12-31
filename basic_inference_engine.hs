type Condition = String
type Action = String
type Rule = (Condition, Action)

rules :: [Rule]
rules = [("diabetes", "use GLP-1 drugs"),
         ("high blood sugar", "recommend insulin")]

infer :: Condition -> [Action]
infer cond = [action | (c, action) <- rules, c == cond]

main :: IO ()
main = do
    print $ infer "diabetes"  -- Output: ["use GLP-1 drugs"]

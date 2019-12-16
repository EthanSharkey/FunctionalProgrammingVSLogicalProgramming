--Name: Ethan Sharkey
--Student No.: 17355756

-- Used to test Efficiency
--------------------------------------------------------------------------------------------
--module Main where
--main = putStrLn (longestPrefix ["interview", "interrupt", "integrate", "intermediate"])
--------------------------------------------------------------------------------------------
-- Test Case
--["interview", "interrupt", "integrate", "intermediate"]

longestPrefix :: (Eq words) => [[words]] -> [words]
longestPrefix = foldl1 longestCommonPrefix -- implementing foldl1 on longestcommonprefix


longestCommonPrefix :: (Eq letter) => [letter] -> [letter] -> [letter] -- takes in two letters and returns a letter or whitespace

longestCommonPrefix _ [] = [] -- two base cases
longestCommonPrefix [] _ = []

longestCommonPrefix (x : xs) (y : ys) -- calling function on the two lists
    | x == y = x : longestCommonPrefix xs ys -- if the two letters equal each other, add to prefix, otherwise, stop. signifies end of prefix
    | otherwise = []
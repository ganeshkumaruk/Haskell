module Main where

my_lookup key [] = Nothing
my_lookup key ((k, value):rest)
  | key == k  = Just value
  | otherwise = lookup key rest

testData = [(1, []), (2, [("a", [("i", "tada!")]), ("b", [("j", "nope")])]), (3, [("c", [("k", "tada!")])])]

--my_lookup 2 testData >>= my_lookup "a" >>= my_lookup "i"

-- my_lookup 2 testData >>= my_lookup "b" >>= my_lookup "i"

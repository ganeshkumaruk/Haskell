module Main where
    -- question 1
    sort :: [Integer] -> [Integer]
    sort [] = []
    sort list = [minimum list] ++ sort [x | x <- list, x /= minimum list]
     
    -- question 2
    sortWith [] f = []
    sortWith list f = [f list] ++ sortWith [x | x <- list, x /= f list] f
     
    -- question 4
    everyThird x = x:(everyThird (x + 3))
    everyFifth y = y:(everyFifth (y + 5))
    everyEigth x y = zipWith (+) (everyThird x) (everyFifth y)
     
    -- question 5
    prod a b = a * b
    halfOf = prod 0.5  
 
    -- question 6
    appendToString s a = a ++ s
    addNewLine = appendToString "\n"
     
    -- bonus question 1
    biggestCommonDenominator :: Integer -> Integer -> Integer 
    biggestCommonDenominator a 0 = a
    biggestCommonDenominator a b = biggestCommonDenominator b (mod a b)

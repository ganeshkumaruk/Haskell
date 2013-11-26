module Main where
	allEvenWithRecursion :: [Integer] -> [Integer]
	allEvenWithRecursion [] = []
	allEvenWithRecursion (h:t) = if even h then h:allEvenWithRecursion t else allEvenWithRecursion t
 
	allEvenWithListComprehension :: [Integer] -> [Integer]
	allEvenWithListComprehension (numbers) = [x | x <- numbers , even x ] 
 
	allEvenWithFilter:: [Integer] -> [Integer]
	allEvenWithFilter  = filter even 
	
	allEvenWithFoldRight :: [Integer] -> [Integer]
	allEvenWithFoldRight = foldr (\x xs -> if even x then x:xs else xs) [] 
 
    	allEvenWithFoldLeft :: [Integer] -> [Integer]
    	allEvenWithFoldLeft = foldl (\x xs -> if even xs then x ++ [xs] else x) [] 

	-- question 2 
	reverseList :: [a] -> [a]
	reverseList [] = []
	reverseList (h:t) =  reverseList t ++ [h]
 
    -- question 3
    	colors = ["black", "blue", "white", "yellow", "red"]
    	allColors = [(a, b) | a <- colors, b <- colors, a < b]
    
     
    -- question 4
    	multTable :: Integer -> [(Integer, Integer, Integer)]
    	multTable x = [(a, x, a * x) | a <- [1..12]]
     
    -- question 5
    	mapColors = ["blue", "green", "red"]
    	mapColoring = [(("Tennessee", a), ("Mississippi", b), ("Alabama", c), ("Georgia", d), ("Florida", e)) 
                                                  | a <- mapColors, 
                                                    b <- mapColors, 
                                                    c <- mapColors, 
                                                    d <- mapColors, 
                                                    e <- mapColors,
                                                    a /= b, a /=c, a /= d,
                                                    b /= c,
                                                    c /= d, c /= e,
                                                    d /= e
                                                    ]
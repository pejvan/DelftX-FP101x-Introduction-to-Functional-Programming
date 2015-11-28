--doesn't compile
--any01 :: (a -> Bool) -> [a] -> Bool 
--any01 p = map p . or

any02 :: (a -> Bool) -> [a] -> Bool
any02 p = or . map p

any03 :: (a -> Bool) -> [a] -> Bool
any03 p xs = length (filter p xs) > 0

any04 :: (a -> Bool) -> [a] -> Bool
any04 p = not . null . dropWhile (not . p)

--fails on: any05 (1==) [0,1,2,3,4,5] (returns False)
--any05 :: (a -> Bool) -> [a] -> Bool
--any05 p = null . filter p

any06 :: (a -> Bool) -> [a] -> Bool
any06 p xs = not (all (\ x -> not (p x)) xs)

any07 :: (a -> Bool) -> [a] -> Bool
any07 p xs = foldr (\ x acc -> (p x) || acc) False xs

--fails on any (>5) [0,1,2,3,4,5] (returns True)
--any08 :: (a -> Bool) -> [a] -> Bool
--any08 p xs = foldr (||) True (map p xs) 



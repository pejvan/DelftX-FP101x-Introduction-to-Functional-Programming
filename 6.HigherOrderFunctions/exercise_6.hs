--filter01 (>5) [1,2,3,4,5,6,7,8]
--[8,7,6]
--filter01 :: (a-> Bool) -> [a] -> [a]
--filter01 p = foldl (\ xs x -> if p x then x : xs else xs) []


filter02 :: (a-> Bool) -> [a] -> [a]
filter02 p = foldr (\ x xs -> if p x then x : xs else xs) []


--filter01 (>5) [1,2,3,4,5,6,7,8]
--[8,7,6]
--filter03 :: (a-> Bool) -> [a] -> [a]
--filter03 p = foldr (\ x xs -> if p x then xs ++ [x] else xs) []

-- doesn't compile
--filter04 :: (a-> Bool) -> [a] -> [a]
--filter04 p = foldl (\ x xs -> if p x then xs ++ [x] else xs) []


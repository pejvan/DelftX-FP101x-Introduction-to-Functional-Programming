--map01 abs [-1,-3,4,-12]
--[12,4,3,1]
--map01 :: (a -> b) -> [a] -> [b]
--map01 f = foldr (\ x xs -> xs ++ [f x]) []

-- doesn't compile
--map02 :: (a -> b) -> [a] -> [b]
--map02 f = foldr (\ x xs -> f x ++ xs) []

-- doesn't compile
--map03 :: (a -> b) -> [a] -> [b]
--map03 f = foldl (\ x xs -> f x : xs) []

map04 :: (a -> b) -> [a] -> [b]
map04 f = foldl (\ xs x -> xs ++ [f x]) []




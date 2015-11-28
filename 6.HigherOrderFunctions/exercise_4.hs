dropWhile01 :: (a -> Bool) -> [a] -> [a]
dropWhile01 p (x : xs)
 | p x = dropWhile p xs
 | otherwise = x : xs

-- dropWhile02 (>3) [1,2,3,4,5]
-- [2,3,4,5]
dropWhile02 :: (a -> Bool) -> [a] -> [a]
dropWhile02 p (x : xs)
 | p x = dropWhile p xs
 | otherwise = xs

-- dropWhile03 ('w'>) "hello, world"
-- "w"
dropWhile03 :: (a -> Bool) -> [a] -> [a]
dropWhile03 p = foldr (\ x acc -> if p x then acc else x : acc) []

--dropWhile04 (<3) [1,2,3,4,5]
--[5,4,3]
dropWhile04 :: (a -> Bool) -> [a] -> [a]
dropWhile04 p = foldl add []
 where add [] x = if p x then [] else [x]
       add acc x = x : acc



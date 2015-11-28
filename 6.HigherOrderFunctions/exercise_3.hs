takeWhile01 :: (a -> Bool) -> [a] -> [a]
takeWhile01 _ [] = []
takeWhile01 p (x : xs) 
  | p x = x : takeWhile p xs
  | otherwise = takeWhile p xs

-- takeWhile02 (<3) [1,2,3,4,5]
-- *** Exception: exercise_3.hs:8:1-21: Non-exhaustive patterns in function takeWhile02
takeWhile02 :: (a -> Bool) -> [a] -> [a]
takeWhile02 _ [] = []
takeWHile02 p (x : xs)
  | p x = x : takeWhile p xs
  | otherwise = []

-- takeWhile03 (<3) [1,2,3,4,5]
-- [2]
takeWhile03 :: (a -> Bool) -> [a] -> [a]
takeWhile03 p (x : xs)
  | p x = takeWhile p xs
  | otherwise = []


-- takeWhile04 (<3) [1,2,3,4,5]
-- [2,1]
takeWhile04 :: (a -> Bool) -> [a] -> [a]
takeWhile04 p = foldl (\ acc x -> if p x then x: acc else acc)[]


elem1 :: Eq a => a -> [a] -> Bool
elem1 _ [] = False
elem1 x (y : ys) 
  | x == y = True
  | otherwise = elem1 x ys

--elem2 :: Eq a => a -> [a] -> Bool
--elem2 :: Eq a => a -> [a] -> Bool
--elem2 _ [] = False
--elem2 x (y : ys) 
--  | x == y = True
--  | otherwise elem2 x (y:ys)

elem3 :: Eq a => a -> [a] -> Bool
elem3 _ [] = True
elem3 x (y : ys)
  | x == y = True
  | otherwise = elem3 x ys

elem4 _ [] = False
elem4 x (y : ys) = x == y


--dec2int01 [2, 3, 4, 5]
--140
--dec2int01 :: [Integer] -> Integer
--dec2int01 = foldr (\ x y -> 10 * x + y) 0

--dec2int02 [2, 3, 4, 5]
--140
--dec2int02 :: [Integer] -> Integer
--dec2int02 = foldl (\ x y -> x + 10 * y) 0

dec2int03 :: [Integer] -> Integer
dec2int03 = foldl (\ x y -> 10 * x + y) 0

--dec2int04 [2, 3, 4, 5]
--5432
--dec2int04 :: [Integer] -> Integer
--dec2int04 = foldr (\ x y -> x + 10 * y) 0


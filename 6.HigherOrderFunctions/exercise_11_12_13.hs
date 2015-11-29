unfold :: (b -> Bool) -> (b -> a) -> (b -> b) -> b -> [a]
unfold p h t x
  | p x = []
  | otherwise = h x : unfold p h t (t x)

type Bit = Int
chop8 :: [Bit] -> [[Bit]] 
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

--doesn't compile
--chop8_1 :: [Bit] -> [[Bit]]
--chop8_1 = unfold [] (drop 8) (take 8)


chop8_2 :: [Bit] -> [[Bit]]
chop8_2 = unfold null (take 8) (drop 8)

chop8_3 :: [Bit] -> [[Bit]]
chop8_3 = unfold null (drop 8) (take 8)


chop8_4 :: [Bit] -> [[Bit]]
chop8_4 = unfold (const False) (take 8) (drop 8)


-- doesn't compile
-- map_1 :: (a -> b) -> [a] -> [b]
-- map_1 f = unfold null (f) tail

-- doesn't compile
-- map_2 :: (a -> b) -> [a] -> [b]
-- map_2 f = unfold null (f (head)) tail


map_3 :: (a -> b) -> [a] -> [b]
map_3 f = unfold null (f . head) tail 


-- doesn't compile
--map_4 :: (a -> b) -> [a] -> [b]
--map_4 f = unfold empty (f . head) tail



iterate_1 :: (a -> a) -> a -> [a]
iterate_1 f = unfold (const False) id f


iterate_2 :: (a -> a) -> a -> [a]
iterate_2 f = unfold (const False) f f



iterate_3 :: (a -> a) -> a -> [a]
iterate_3 f = unfold (const True) id f



iterate_4 :: (a -> a) -> a -> [a]
iterate_4 f = unfold (const True) f f









halve :: [a] -> ([a],[a])
halve xs = splitAt (length xs `div` 2) xs

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) = if x <= y then x : merge xs (y:ys) else y : merge (x:xs) ys

msort1 :: Ord a => [a] -> [a]
msort1 [] = []
msort1 xs = merge (msort1 zs) (msort1 ys) where (ys, zs) = halve xs

msort2 :: Ord a => [a] -> [a]
msort2 []  = []
msort2 [x] = [x]
msort2 xs = merge (msort2 ys) (msort2 zs) where (ys, zs) = halve xs 


msort3 :: Ord a => [a] -> [a]
msort3 [] = []
msort3 [x] = [x]
msort3 xs  = msort3 ys ++ msort3 zs where (ys, zs) = halve xs

msort4 :: Ord a => [a] -> [a]
msort4 [] = []
msort4 [x] = [x]
msort4 xs = msort4 (msort4 ys ++ msort4 zs) where (ys, zs) = halve xs



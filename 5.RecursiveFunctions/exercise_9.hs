merge1 :: Ord a => [a] -> [a] -> [a]
merge1 [] ys = ys
merge1 xs [] = xs
merge1 (x : xs) (y : ys) = if x <= y then x : merge1 xs ys else y : merge1 xs ys


merge2 :: Ord a => [a] -> [a] -> [a]
merge2 [] ys = ys
merge2 xs [] = xs
merge2 (x : xs) (y : ys) = if x <= y then y : merge2 xs (y: ys) else x : merge2 (x : xs) ys


merge3 :: Ord a => [a] -> [a] -> [a]
merge3 [] ys = ys
merge3 xs [] = xs
merge3 (x:xs) (y:ys) = if x <= y then y:merge3(x:xs) ys else x : merge3 xs (y:ys)



merge4 :: Ord a => [a] -> [a] -> [a]
merge4 [] ys = ys
merge4 xs [] = xs
merge4 (x:xs) (y:ys) = if x <= y then x : merge4 xs (y:ys) else y : merge4 (x:xs) ys


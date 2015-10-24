remove :: Int -> [a] -> [a]
-- remove n xs = take n xs ++ drop n xs
--remove n xs = drop n xs ++ take n xs
--remove n xs = take (n+1) xs ++ drop n xs
remove n xs = take n xs ++ drop (n+1) xs


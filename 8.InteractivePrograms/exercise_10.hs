foldRight :: (a -> b -> b) -> b -> [a] -> b
foldRight f b [] = b
foldRight f b (a : as) = f a $ foldRight f b as

foldRightM :: Monad m => (a -> b -> m b) -> b -> [a] -> m b
foldRightM f b [] = return b
foldRightM f b (a : as) = (foldRightM f b as) >>= \b' -> f a b'


--foldRightM (\a b -> putChar a >> return (a : b)) [] (show [1, 3..10]) >>= \r -> putStrLn r
--]9,7,5,3,1[[1,3,5,7,9]

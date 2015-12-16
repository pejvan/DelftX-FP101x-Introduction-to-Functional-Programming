foldLeft :: (b -> a -> b) -> b -> [a] -> b
foldLeft f b [] = b
foldLeft f b (a:as) = foldLeft f (f b a) as

foldLeftM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a
foldLeftM f a [] = return a
foldLeftM f a (b : bs) = f a b >>= \a' -> foldLeftM f a' bs

-- foldLeftM (\a b -> putChar b >> return (b : a ++ [b])) [] "haskell" >>= \r -> putStrLn r
-- haskelllleksahhaskell


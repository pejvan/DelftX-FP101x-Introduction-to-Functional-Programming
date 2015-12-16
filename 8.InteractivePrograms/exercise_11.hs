liftM :: Monad m => (a -> b) -> m a -> m b
liftM f m
  = do x <- m
       return (f x)

liftM' :: Monad m => (a -> b) -> m a -> m b
liftM' f m = m >>= \a -> return (f a)



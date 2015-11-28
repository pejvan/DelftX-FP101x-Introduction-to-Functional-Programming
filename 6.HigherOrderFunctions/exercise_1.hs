all01 :: (a -> Bool) -> [a] -> Bool
all01 p xs = and (map p xs)

--type issue
--all02 :: (a -> Bool) -> [a] -> Bool
--all02 p xs = map p (and xs)

all03 :: (a -> Bool) -> [a] -> Bool
all03 p = and . map p

all04 :: (a -> Bool) -> [a] -> Bool
all04 p = not . any (not . p)

-- type issue
--all05 :: (a -> Bool) -> [a] -> Bool
--all05 p = map p . and

all06 :: (a -> Bool) -> [a] -> Bool
all06 p xs = foldl (&&) True (map p xs)

-- False causes trouble
-- all07 :: (a -> Bool) -> [a] -> Bool
-- all07 p xs = foldr (&&) False (map p xs)

-- type issue: missing xs, however, the answer considers this to be correct
--all08 :: (a -> Bool) -> [a] -> Bool
--all08 p = foldr (&&) True . map







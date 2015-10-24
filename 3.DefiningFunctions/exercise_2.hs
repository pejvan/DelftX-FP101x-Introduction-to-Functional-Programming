import Prelude hiding ((||))

--False || False = False
--_ || _ = True

-- False || b = b
-- True  || _ = True

--b || c
--  | b == c = True
--  | otherwise = False

b || c
  | b == c = b
  | otherwise = True
 

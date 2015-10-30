and2 :: [Bool] -> Bool
and2 [] = True
and2 (b : bs) = b && and2 bs

and3 [] = True
and3 (b : bs)
  | b = and3 bs
  | otherwise = False

and4 [] = False
and (b:bs) = b && and4 bs

and5 [] = False
and5 (b:bs) = b || and5 bs

and6 [] = True
and6 (b:bs) 
  | b == False = False
  | otherwise = and6 bs

and7 [] = True
and7 (b:bs) = b || and7 bs

and8 [] = True
and8 (b:bs) = and8 bs && b

and9 [] = True
and9 (b:bs)
  | b = b
  | otherwise = and9 bs


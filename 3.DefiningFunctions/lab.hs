e3 x = x * 2

e4 (x, y) = x

e5 (x, y, z) = z

e6 x y = x * y

e7 (x, y) = (y, x)

e8 x y = (y, x)

e9 [x, y] = (x, True)

e10 (x, y) = [x, y]

e11 :: (Char, Bool)
e11 = ('\a', True)

e12 :: [(Char, Int)]
e12 = [('a', 1)]

e13 :: Int -> Int -> Int
e13 x y = x + y * y

e14 :: ([Char], [Float])
e14 = ("Haskell", [3.1, 3.14, 3.141, 3.1415])

e15 :: [a] -> [b] -> (a, b)
e15 xs ys = (head xs, head ys)



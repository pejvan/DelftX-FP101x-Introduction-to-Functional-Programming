--scalprod = sum ( (xs !! i) * (ys !! i) ) for i = 0 to n-1

scalarproduct :: [ Int ] -> [ Int ] -> Int 
scalarproduct xs ys = sum [x * y | (x,y) <- xs `zip` ys]



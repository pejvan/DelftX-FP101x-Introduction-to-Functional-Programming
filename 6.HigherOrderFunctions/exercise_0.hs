p x = x >= 1 
f x = x * 2 

f00 p f (x:xs) = [f x | x <- xs, p x]




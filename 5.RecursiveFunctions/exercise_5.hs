concat2 :: [[a]] -> [a]  
concat2 [] = []
concat2 (xs:xss) = xs ++ concat2 xss






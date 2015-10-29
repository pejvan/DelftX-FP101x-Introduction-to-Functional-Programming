import Data.Char

char2int :: Char -> Int
char2int c 
  | isUpper c = ord c  - ord 'A' 
  | isLower c = ord c  - ord 'a' 
  | otherwise = 0
  
int2char :: Int -> Char
int2char n 
  | and [ 0 <= n , n <= 25 ] = chr (n + ord 'A')
  | otherwise = '_'


shift :: Int -> Char -> Char
shift n c
  | isUpper c = int2char ( (char2int c + n) `mod` 26)
  | isLower c = toLower (int2char ( (char2int c + n) `mod` 26) )
  | otherwise = c

  

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]


import Parsing

nat :: Parser Int
nat 
  = do xs <- many1 digit
       return (read xs)

int :: Parser Int
int  = do
   char '-'
   n <- Main.nat
   return (-n)
  +++ Main.nat


module Lecture9Ex1  where
import Data.List
import Data.Char
import Unsafe.Coerce

data Nat = Zero
         | Succ Nat
         deriving Show

z = Zero
one = Succ Zero
two = Succ (Succ Zero)
three = Succ (Succ (Succ Zero))

-- parse error on (n+1)
--integerToNat1 0 = Zero
--integerToNat1 (n + 1) = Succ (integerToNat1 n)

integerToNat2 0 = Succ Zero
integerToNat2 n = (Succ (integerToNat2 n))     --

integerToNat3 n = product [(unsafeCoerce c) :: Integer | c <- show n]     --

integerToNat4 n = integerToNat4 n               --

-- parse error (same)
-- integerToNat5 (n + 1) = Succ (integerToNat5 n)
-- integerToNat5 0 = Zero

-- integerToNat6 (n+1) = let m = integerToNat6 n in Succ m
-- integerToNat6 0 = Zero

-- parse error as well
-- integerToNat7 = head . m
--   where {
--         ; m 0 = [0]
--         ; m (n + 1) = [sum [x | x <- (1 : m n)]]     --
--         }

-- doesn't compile
-- integerToNat8 :: Integer -> Nat
-- integerToNat8 = \ n -> genericLength [c | c <- show n, isDigit c]
 

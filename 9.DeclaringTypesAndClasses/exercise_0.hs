-- doesnt' compile neither with hugs nor ghci...
module Lecture9Ex0 where
import Data.List
import Data.Char
import Unsafe.Coerce
--import Hugs.IOExts (unsafeCoerce)

data Nat = Zero
         | Succ Nat
         deriving Show

z = Zero
one = Succ Zero
two = Succ (Succ Zero)
three = Succ (Succ (Succ Zero))


natToInteger1 Zero = 0
natToInteger1 (Succ n) = natToInteger1 n + 1

natToInteger2 (Succ n) = natToInteger2 n + 1
natToInteger2 Zero = 0

-- infinite loop
-- natToInteger3 n = natToInteger3 n  

natToInteger4 (Succ n) = 1 + natToInteger4 n
natToInteger4 Zero = 0

-- zero = 1...
-- natToInteger5 Zero = 1
--natToInteger5 (Succ n) = (1 + natToInteger5 n) - 1  

natToInteger6 = head . m
   where m Zero = [0]
         m (Succ n) = [sum [x | x <- (1 : m n)]]

natToInteger7 :: Nat -> Integer
natToInteger7 = \ n -> genericLength [c | c <- show n, c == 'S']


-- doesn't compile:
-- Couldn't match expected type ‘Integer’ with actual type ‘Int’
-- In the expression: length [c | c <- show n, c == 'S']
-- In the expression: \ n -> length [c | c <- show n, c == 'S']
--  natToInteger8 :: Nat -> Integer
--  natToInteger8 = \ n -> length [c | c <- show n, c == 'S']



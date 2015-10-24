safetail0 xs = if null xs then [] else tail xs

safetail1 [] = []
safetail1 (_ : xs ) = xs

safetail2 (_ : xs)
  | null xs = []
  | otherwise = tail xs

safetail3 xs
  | null xs = []
  | otherwise = tail xs

safetail4 xs = tail xs
safetail4 [] = []

safetail5 [] = []
safetail5 xs = tail xs

safetail6 [x] = [x]
safetail6 (_ : xs ) = xs

safetail7
  = \ xs ->
      case xs of 
        [] -> []
        (_ : xs ) -> xs



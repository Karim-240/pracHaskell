import Data.Char
type Bit = Int  

chr2int :: Char -> Int
chr2int c = ord c 
chr2int [] = (int2bin x) 

int2bin :: Int -> [Bit] 
int2bin n | n < 2     = [n]
          | otherwise = n `mod` 2 : int2bin (n `div` 2)
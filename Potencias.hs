pot1 :: Int->Int->Int
pot1 n 0 = 1
pot1 n x = n * (pot1 n (x-1))

pot2 :: Int->Int->Int
pot2 n x = if(x == 0) then 1
                else n * (pot2 n (x-1))

pot3 :: Int->Int->Int
pot3 n x
    | (x == 0)  = 1
    | (x>0)     = n * (pot3 n (x-1))

pot4 :: Int->Int->Int
pot4 n x
    | (x == 0)  = 1
    | otherwise = n * (pot4 n (x-1))
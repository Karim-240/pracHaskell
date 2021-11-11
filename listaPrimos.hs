lsPrm :: Num a => [a] -> a
lsPrm [] = 0
lsPrm (x:xs) = x + n_sum_1 xs

primo :: Int -> Bool
primo x = divisores x == [1,x]

divisores :: Int -> [Int]
divisores x = filter (divisible x) [1..x]

divisible :: Int -> Int -> Bool
divisible x y = x `rem` y == 0

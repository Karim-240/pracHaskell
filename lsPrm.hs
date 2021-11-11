sm :: Num a => [a] -> a
sm [] = 0
sm (x:xs) = if (primo x == True) then (x + sm xs) else 0 + sm xs


primo :: Int -> Bool
primo x = divisores x == [1,x]

divisores :: Int -> [Int]
divisores x = filter (divisible x) [1..x]

divisible :: Int -> Int -> Bool
divisible x y = x `rem` y == 0

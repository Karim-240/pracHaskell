import Data.Char 
-- ****Obtener factorial **** ---

-- Ejemplo con condicional --
fac1 :: Integer -> Integer
fac1 n = if n == 0 then 1
        else n * fac1 (n-1)

-- Ejemplo con guardas --
fac2 :: Integer -> Integer
fac2 n 
    | n == 0 =1
    | otherwise = n * fac2 (n-1)

-- Ejemplo con patrones --
fac3 :: Integer -> Integer
fac3 0 = 1
fac3 n = n* fac3 (n-1)

-- Ejemplos para proyecto ---
caracterDeDigito :: Int -> Char
caracterDeDigito n = chr (n + ord '0')

digitoDeCaracter :: Char -> Int
digitoDeCaracter c = ord c 


--Identifica mayor
    myr [] = 0
    myr (x:xs) =if ( x > myr (xs) ) then x
                else myr (xs)

-- Elimina enesimo elemento
    del [] n = []
    del (x:xs) n =  if (n == 0 ) then (del xs (n - 1))
                    else (x:(del xs (n-1)))

--Ejercicio en la clase 
elMayor [x] = x
elMayor (x:xs) =findMax xs xs

findMax [] v =v 
findMax (x:xs) v = if (v>x) then findMax xs v
                            else findMax xs x
--Suma los valores pares de una lista
sumaPares [] = 0
sumaPares (x:xs) =if  (even x) then x + (sumaPares xs )
                else (sumaPares xs)

--Borrar los numeros que estan en posicion multiplo de 3
--delM3 [1,2,3,4,5,6,7,8,9] = [1,2,4,5,7,8]
delM3 lista = _delM3 lista 1
_delM3 [] n = []
_delM3 (x:xs) n = if ((mod n 3) == 0) then 
                    else x: (_delM3 xs (n+1))   --Esta funcion recursiva devuelve una lista 
--Orden superior
--Lenguajes funcionales permiten manejar funciones como argumentos

inc :: Int -> Int 
inc x = x + 1

lista :: [Int]
lista = [1..10]

--Func map toma una funcion y la aplica a lista de elemntos aqui es inc y lista 
procesa = map inc lista 

--Funciones anonimas son las que tiene la funcion sin definirlas aparte
procesa2 = map (\x->x*x) lista 
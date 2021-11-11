--Definicion del arbol
data Tree =  Leaf Int | Branch Int Tree Tree 
--Indicamos que tipo es a1
a1:: Tree
--COnfiguracion arbol con valores
a1 = Branch 3 (Leaf 1) (Leaf 4)
a2 = Branch 5 a1 (Leaf 10)
a3 = Branch 5 (Branch 3 (Leaf 1) (Leaf 4)) (Leaf 10)

--Funcion para contar los nodos de un arbol
conTreeNodes (Leaf x) = 1
conTreeNodes (Branch x sai sad) = 1 +  (conTreeNodes sai) + (conTreeNodes sad) 

--Generar lista a partir de un arbol 
tree2list (Leaf x) = [x]
tree2list (Branch x sai sad) = [x] ++ (tree2list sai) ++ (tree2list sad)

--Indica si un elementos esta en el arbol 
isV (Leaf x) v = if (x==v) then True else False 
isV (Branch x sai sad) v = if (x==v) then True 
                                    else (isV sai v) || (isV sad v)
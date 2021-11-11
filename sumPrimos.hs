modulo inner out = if(inner >= out)
    then modulo (inner-out) out
    else inner

cuentaDiv num 1 = 1
cuentaDiv num i = if ((modulo num i)==0)
    then (cuentaDiv num (i-1)) + 1
    else (cuentaDiv num (i-1)) + 0

numprimo 1 = False
numprimo n = let
    nVecesDivisible = cuentaDiv n n
    in
    if(nVecesDivisible>2) then False
    else True

suma 2 = 2
suma num = if(numprimo num == True)
    then (num + (suma (num -1)))
    else suma (num-1)

longitud [] = 0
longitud (x:xs) = 1 + (longitud xs)

sumaLista [] = 0
sumaLista (x:xs) = if (numprimo x == True)
    then (x + (sumaLista xs))
    else sumaLista xs
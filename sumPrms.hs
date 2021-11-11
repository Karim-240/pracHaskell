modulo inner out = if(inner >= out)
    then modulo (inner-out) out
    else inner

sumPrms [] = 0
sumPrms (x:xs) = if (numPrm x == True)
    then (x + (sumPrms xs))
    else sumPrms xs

conDiv val 1 = 1
conDiv val i = if ((modulo val i)==0)
    then (conDiv val (i-1)) + 1
    else (conDiv val (i-1)) + 0

numPrm 1 = False
numPrm n = let
    vecDiv = conDiv n n
    in
    if(vecDiv>2) then False else True

suma 2 = 2
suma val = if(numPrm val == True)
    then (val + (suma (val -1))) else suma (val-1)

long [] = 0
long (x:xs) = 1 + (long xs)


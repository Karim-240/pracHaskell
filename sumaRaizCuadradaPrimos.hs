then modulo (inner-out) out

else inner
c numero 1 = 1
c numero i = if ((modulo numero i)==0)
then (c numero (i-1)) + 1
else (c numero (i-1)) 

primo 1 = False

primo n = let 
cD = c n n 
in
if(cD>2) then False
else True

suma 2 = sqrt 2
suma numero = if(primo numero == True)
then sqrt numero + (suma (numero -1))
else suma (numero-1)
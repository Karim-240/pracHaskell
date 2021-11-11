import Data.Char
import Data.Bits
type Bit = Int  


 -- ================================================
 --                     Conversion
 -- ================================================

-- Recibe valor binario y convierte a entero ascii --
bin2int :: [Bit] -> Int
bin2int =  foldr (\x y -> x + 2*y) 0
 
-- Recibe valor entero ascii y convierte a binario --
int2bin :: Int -> [Bit]
int2bin n | n < 2     = [n]
          | otherwise = n `mod` 2 : int2bin (n `div` 2)
 
 -- ================================================
 --                     Codificacion
 -- ================================================
 
-- Complementa valor binario a un octeto --
creaOcteto :: [Bit] -> [Bit]
creaOcteto bs =  take 8 (bs ++ repeat 0)
 
-- Funcion principal, recibe cadena, convierte caracteres en binario, complementa octeto y concatena los octetos 
palabra ::  [Char] ->  [Bit] 
palabra  =  concat.map(creaOcteto.int2bin.ord)

encripta :: [Char] -> [Char] -> [Bit]
encripta pala contra = opXor (palabra pala) (palabra contra)


opXor :: [Bit] -> [Bit] -> [Bit]
opXor  xs ys = zipWith xor xs ys

 -- ================================================
 --                    Decodificacion
 -- ================================================

 -- Divide los octetos, primera parte de la decodificacion 
separaOctetos :: [Bit] -> [[Bit]]
separaOctetos [] = []
separaOctetos bs =  
    take 8 bs : separaOctetos (drop 8 bs)
 
-- Funcion principal recibe lista binaria y separa octetos y regresa valor decodificado 
descodifica :: [Bit] -> String
descodifica =  map (chr.bin2int).separaOctetos
 
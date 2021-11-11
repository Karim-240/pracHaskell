-- ================================================
--                     Declaraciones
-- ================================================
import Data.Char
import Data.Bits
type Bit = Int  

-- ================================================
 --                     Encriptación
 -- ================================================
 
encripta :: [Char] -> [Char] -> [Bit]
encripta pala contra = sentXor (string2bin pala) (string2bin contra)

 -- ================================================
 --                    Desencriptación
 -- ================================================

desencripta :: [Bit] -> [Char] -> String
desencripta pala contra = traduce (sentXor pala (string2bin contra) )

-- ================================================
--                     Operaciones
-- ================================================

-- Recibe  binario y regresa entero --
b2i :: [Bit] -> Int
b2i =  foldr (\x y -> x + 2*y) 0
 
-- Recibe entero  y regresa binario --
i2b :: Int -> [Bit]
i2b n | n < 2     = [n]
          | otherwise = n `mod` 2 : i2b (n `div` 2)
 
-- Recibe cadena y regresa lista de bits
string2bin ::  [Char] ->  [Bit] 
string2bin  =  concat.map(creaOct.i2b.ord)

-- Complementa valor binario a un octeto --
creaOct :: [Bit] -> [Bit]
creaOct bs =  take 8 (bs ++ repeat 0)

-- Divide los octetos
separaOct :: [Bit] -> [[Bit]]
separaOct [] = []
separaOct bs =  
    take 8 bs : separaOct (drop 8 bs)

-- Aplica sentencia Xor a dos listas binarias 
sentXor :: [Bit] -> [Bit] -> [Bit]
sentXor  xs ys = zipWith xor xs ys
 
-- Recibe lista binaria y convierte a String
traduce  :: [Bit] -> String
traduce  =  map (chr.b2i).separaOct

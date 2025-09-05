{-
Ejercicio 4) 

Para cada una de las siguientes expresiones decidir si poseen tipo. Si es
así indicar cuál es.


a. 1 && 2 == 2.  NO TIENE TIPO.

b. 1 + if 3 < 5 
            then 3 
            else 5

:: Int


c. let par = (True, 4)
        in (if first par 
                then first par 
                else second par)

:: Error de tipo

d. (doble doble) 5 Error de tipo

e. doble (doble 5)

f. twice first Error de tipo

g. (twice doble) doble Error de tipo

h. (twice twice) first Error de tipo

i. apply apply

-}



(doble doble)   :: Int -> Int
5               :: Int
------------------------------
(doble doble) 5 :: Int  



doble :: Int -> Int 
doble :: Int -> Int
-------------------------- n <- (Int -> Int))
(doble doble) :: Int -> Int


-- Como lo justifico? Con reduccion?


-------------------------------------------------


doble (doble 5)



doble      :: Int -> Int 
(doble 5)  :: Int 
------------------------------
doble (doble 5) :: Int 


doble :: Int -> Int 
5     :: Int 
--------------------
doble 5 :: Int 


-------------------------------------------------------


twice first



twice :: (a -> a)   -> (a -> a)
first :: (a',b') -> a'
--------------------- 
twice first :: Error 'twice espera una funcion de tipo a -> a y first recibe un tipo y devuelve otro tipo'  


------------------------------------------------------


(twice doble) doble


(twice doble)  :: Int           -> Int
doble          :: Int -> Int
-------------------------------------
(twice doble) doble :: ...




twice  :: (a -> a) -> (a -> a)
doble  :: Int -> Int
-------------------------------- 
twice doble :: Int -> Int


-- equivalencias
a = Int






----------------------------

(twice twice) first


(twice twice) :: ((a'-> a') -> (a' -> a')) -> (a' -> a') -> (a'-> a')
first         :: (a,b) -> a
---------------------------------
(twice twice) first :: ....




------------------------------


apply apply

apply :: (a' -> a')               -> (a' -> a')
apply :: (a -> b) -> (a -> b)
------------------------------
apply apply :: (a -> b) -> (a -> b)


a' = (a -> b)
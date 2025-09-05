{-
swap :: (a,b) -> (b,a)
swap    (x,y)  = (y,x)


uflip   :: ((b,a) -> c) -> ((a,b) -> c)
uflip  f = g
    where g p = f (swap p)


apply :: (a -> b) -> (a -> b)
apply f = g
    where g x = f x

twice :: (a -> a) -> (a -> a)
twice f = g
    where g x = f (f x)


first :: (a,b)  -> (b,a)
first    (x,y)   = x

Dadas las definiciones anteriores, indicar el tipo de las siguientes expresiones:

a. apply first
b. first (swap, uflip)
c. twice doble
d. twice twice
e. twice uflip
f. twice swap
g. uflip swap
h. (twice twice) swap


-}
-- a)

apply :: (a -> b) -> (a -> b)

       ---- A------  ---- B -----
apply :: (a'-> a) -> ( a' -> a )
first :: (a,b) -> a
-------------------------------- a' <- (a,b)
apply first :: (a,b) -> a -- RESULTADO
               ---- B----


-- b)

first        :: (a',b) -> a'
(swap,uflip) :: (a,b)
--------------------------- a' <- (a,b) -> (b,a)
first (swap,uflip) :: (a,b) -> (b,a)


swap  :: (a,b) -> (b,a)
uflip :: ((b,a) -> c) -> ((a,b) -> c)


{-
Por regla de definicion de first

first (a,b) = a

-}


-- c) twice doble

twice :: (a' -> a') -> (a' -> a')
doble :: Int -> Int
----------------------------- a' <- Int
twice doble :: Int  -> Int



g   ::  Int  -> Int
x   ::  Int
-----------------------
g x :: Int


f     ::  Int -> Int
(f x) ::  Int 
-------------------------
f (f x) :: Int



f :: Int -> Int
x :: Int



-- d) twice twice



-- e) twice uflip

twice :: (a -> a) -> (a -> a)
        ---------- A ---------------
uflip :: ((b,a) -> c) -> ((a,b) -> c)
-------------------------- -----------------  a' -> ...Consultar
twice uflip :: ((b,a) -> c) -> ((a,b) -> c)


g :: ((b,a) -> c) -> ((a,b) -> c)
x :: ((b,a) -> c)
------------------------
g x :: ((a,b) -> c)


f     :: ((b,a) -> c) -> ((a,b) -> c)
(f x) :: ((a,b) -> c)
---------------------------
f (f x) :: ((a,b) -> c)


f :: ((b,a) -> c) -> ((a,b) -> c)
x :: ((b,a) -> c)
---------------------
f x :: ((a,b) -> c)


x :: ((b,a) -> c)



-- g) uflip swap

        ------ A----------     ----- B -----
uflip :: ((b,a) ->     c)     -> ((a,b) -> c)
         ------ A---------
swap  :: (d,e) -> (e,d)
--------------------------
uflip swap :: (e,d) -> (e,d)
                ----- B ----- Es equivalente a ((a,b) -> c)

{-
    ¿equvalencias?
    Tengo que unificar lo que espera uflip con swap

    uflip espera (b,a) -> c

    swap tiene tipo (a',b') -> (b',a')


    Entonces, 
    (b,a) = (d,e)
    c     = (e,d)


    

-}

g :: (a,b) -> c
p :: (a,b)
---------------------------
g p :: c


f        ::  (b,a) -> c
(swap p) ::  (b,a)
------------------------
f (swap p) :: c 



swap :: (a,b) -> (b,a)
p    :: (a,b)
-----------------------------
swap p :: (b,a)



-- h) (twice twice) swap


(twice twice) :: (a -> a)   -> (a -> a)
swap          :: (a -> a)  -- Observacion *
------------------------------- a'<- ...
(twice twice) swap :: .......


twice :: (a' -> a')   -> (a' -> a')
twice :: (a -> a) -> (a -> a)
-----------------------     a' <- (a -> a)
twice twice :: (a -> a)   -> (a -> a)


{-
 * Observacion
Si swap tiene el siguiente tipo:
swap :: (a,b) -> (b,a)

Y twice twice tiene en la metavariable A: (a -> a)

Como deberia quedar swap?

Deberia tener 
(a,b) -> (b,a) o deberia instanciar en twice twice un a' <- ...

De ser asi, como puedo instanciar un a' que cumpla con:

(a,b) -> (b,a)

a' <- no puede ser (a,b) 

-}



-- Segundo intento de (twice twice) swap


                ----- A ------------     --- B ----
(twice twice) ::  (a -> a)             -> (a -> a)
swap          :: (a',b') -> (b',a')
----------------------------------------
(twice twice) swap :: (a'->a') -> (a'-> a')
                        ----- B -------



{-
Equivalencias
a = (a',b')
a = (b',a')

Esta es mas dificil de ver
a' = b'

-}
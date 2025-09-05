
twice :: (a -> a) -> (a -> a)
twice f = g
    where g x = f (f x)

-- 1) reglas de definicion

-- f es una funcion  (... -> ... ) y propago esta info
-- g es una funcion (... -> ...) y propago

-- 2) Determinar x

twice :: (a -> a)   -> (a -> a) -- Por propagacion del resultado de twice f
f     :: (a -> a)
------------------------------
twice f :: (a -> a)  -- Por definicion de twice f = g


g   ::  a  ->  a
x   ::  a
-------------------------------
g x :: a


f      ::  a  -> a
(f x)  ::  a
-------------------------------
f (f x) :: a



f  :: a -> a
x  :: a
-----------------------
f x :: a




{-

Ejercicio 3) Dadas las siguientes definiciones y los siguientes tipos, asociar cada tipo
con la función correspondiente.
a. 
const   ::  a ->  (b -> a)
const x = g
        where g y = x
        
appDup :: (a,a) -> b  -> ( a -> b  )
b. appDup f = g
    where g x = f (x, x)

c. 
appFork :: (a -> b , a -> c )  ->  (a   -> (b , c))
appFork (f, g) = h
        where h x = (f x, g x)


d. 
appPar  :: (a -> b, c -> d) -> ((a,c) -> (b,d))
appPar (f, g) = h
        where h (x, y) = (f x, g y)


e.
appDist :: (a -> b) -> ( (a, a) -> (b, b) )
appDist f = g
        where g (x, y) = (f x, f y)


f. 

flip ::  (a -> b) -> (c -> (a -> b))
flip f = h
    where h x = k
        where k y = (f y) x


g. 
subst ::   a ->  (b -> c)    -> ((a -> b)  ->  (a -> c)) 
subst f = h
        where h g = k
            where k x = (f x) (g x)


-}



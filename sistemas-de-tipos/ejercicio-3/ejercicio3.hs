const   ::  a ->  (b -> a)
const x = g
        where g y = x
        
appDup :: (a,a) -> b  -> ( a -> b  )
appDup f = g
    where g x = f (x, x)

appFork :: (a -> b , a -> c )  ->  (a   -> (b , c))
appFork (f, g) = h
        where h x = (f x, g x)



appPar  :: (a -> b, c -> d) -> ((a,c) -> (b,d))
appPar (f, g) = h
        where h (x, y) = (f x, g y)



appDist :: (a -> b) -> ( (a, a) -> (b, b) )
appDist f = g
        where g (x, y) = (f x, f y)



flip ::  (a -> b) -> (c -> (a -> b))
flip f = h
    where h x = k
        where k y = (f y) x



subst ::   a ->  (b -> c)    -> ((a -> b)  ->  (a -> c)) 
subst f = h
        where h g = k
            where k x = (f x) (g x)




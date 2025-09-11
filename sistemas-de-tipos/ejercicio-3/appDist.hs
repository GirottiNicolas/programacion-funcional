{-
appDist es una funcion que toma una funcion que va de 'a en b'
y devuelve una funcion que va de par a en par b
-}


appDist f = g
        where g (x, y) = (f x, f y)


appDist :: (a -> b) -> ( (a, a) -> (b, b) )
f       :: (a -> b)
------------------------
appDist f :: ( (a, a) -> (b, b) )


g      :: (a, a) -> (b, b)
(x, y) :: (a, a)
----------------------
g (x,y) :: (b, b)


f :: a -> b
x :: a
---------------------
f x :: b



f :: a -> b
y :: a
--------------------
f y :: b








-----------------------------------------------
-- Version 2.0

appDist f = g
        where g (x, y) = (f x, f y)




appDist :: (a -> b)  -> (a,a)   -> (b,b) 
f       :: (a -> b)
-----------------------------
appDist f ::(a,a)   -> (b,b)                     g       :: (a,a)   -> (b,b)
                                                (x,y)   :: (a,a)
                                                -------------------------
                                                g (x,y) :: (b,b)           (f x, f y) :: (b,b)
                                                           
                                                                                f :: a -> b
                                                                                x :: a
                                                                                -------------------
                                                                                f x :: b 
                                                                                

                                                                                f :: a -> b
                                                                                y :: a
                                                                                -------------------
                                                                                f y :: b
                                                                        
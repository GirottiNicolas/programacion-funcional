
{- 

appPar es una funcion toma un par de funciones y devuelve 
una funcion que va de par en par, en la cual el argumento de la funcion
esta formado por los argumentos de las funciones anteriores, y el resultado
esta formado por los resultados de las funciones del par anterior.
-}

appPar  :: (a -> b, c -> d) -> ((a,c) -> (b,d))

appPar (f, g) = h
        where h (x, y) = (f x, g y)


appPar  :: (a -> b, c -> d) -> ((a,c) -> (b,d))
(f, g)  :: (a -> b, c -> d)
--------------------------
appPar (f, g):: (a,c) -> (b,d)          h       :: (a,c) -> (b,d)
                                        (x, y)  :: (a,c)
                                        -------------------------
                                        h (x,y) :: (b,d)     (f x, g y)

                                                                f :: a -> b
                                                                x :: a
                                                                ---------------------
                                                                f x :: b

                                                                g :: c -> d
                                                                y :: c
                                                                ------------------
                                                                g y :: d
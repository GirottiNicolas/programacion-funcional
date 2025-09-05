
{- 

(a -> b, c -> d) -> ( (a, c) -> (b, d) )  
appPar  :: (a -> b, c -> d) -> ((a,c) -> (b,d))
-}


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
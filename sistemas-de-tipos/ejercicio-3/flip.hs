

{-FINAL -}
flip ::  a ->  (b -> c)   -> (b -> ( a -> c))
flip f = h
    where h x = k
        where k y = (f y) x


flip ::  a ->  (b -> c)   -> (b -> ( a -> c))
f    ::  a ->  (b -> c)
-------------------------------
flip f :: b -> ( a -> c)      h    :: b -> ( a -> c)
                                x    :: b
                                ------------------------
                                h x ::  a -> c        k :: a -> c
                                                        y :: a
                                                        ------------------------
                                                        k y :: c               (f y) x :: c -- IMPORTANTE, COLOCAR A LA MISMA ALTURA LAS EQUIVALENCIAS
                                                        
                                                                                
                                                                                f y :: b -> c
                                                                                x   :: b
                                                                                ------------------------
                                                                                (f y) x :: c


                                                                                f :: a    ->     (b -> c)
                                                                                y :: a
                                                                                -------------------------
                                                                                f y :: b -> c
                                                        
                                               

III.    (a -> (b -> c)) -> (b -> (a -> c))


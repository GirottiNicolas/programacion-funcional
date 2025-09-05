
appFork :: (a -> b , a -> c )  ->  (a   -> (b , c))
appFork (f, g) = h
        where h x = (f x, g x)


{-

V. (a -> b, a -> c) -> (a -> (b, c))

-}



appFork (f, g) = h
        where h x = (f x, g x)



appFork :: (a -> b , a -> c )  ->  (a   -> (b , c))
(f, g)  :: (a -> b , a -> c )
----------------------------
appFork :: a   -> (b , c)     h :: a   -> (b , c) 
                                x :: a
                                ---------------------
                                h x :: (b , c)          (f x, g x) :: (b ,c)

                                                        f :: a -> b
                                                        x :: a
                                                        ---------------------
                                                        f x :: b


                                                        g :: a -> c
                                                        x :: a
                                                        ---------------------
                                                        g x :: c
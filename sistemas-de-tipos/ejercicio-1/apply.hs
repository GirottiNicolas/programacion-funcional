


apply f = g
    where g x = f x


apply ::  ( a -> b) -> (a -> b)
f     ::    a -> b
--------------------
apply f ::  a ->b g :: a -> b
                     x :: a
                     -------------------
                     g x :: b           f x :: b
                     
                                            f :: a -> b
                                            x :: a
                                            ----------------------
                                            f x :: b
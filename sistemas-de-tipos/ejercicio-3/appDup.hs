
-- appDup se asocia con el tipo II.

appDup :: (a,a) -> b  -> ( a -> b  )

appDup f = g
    where g x = f (x, x)


appDup :: (a,a) -> b  -> ( a -> b  )
f      :: (a,a) -> b
--------------------
app f :: a -> b                 g :: a -> b 
                                x :: a
                                ------------------------
                                g x :: b                   f (x,x) :: b  
                                                            
                                                            f     :: (a,a) -> b
                                                            (x,x) :: (a,a)
                                                            ---------------------------
                                                            f (x,x) :: b         